// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/core/infrastructure/network_exceptions.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/detail/domain/github_repo_detail.dart';
import 'package:repoviewr/github/detail/infrastructure/github_repo_detail_dto.dart';
import 'package:repoviewr/github/detail/infrastructure/repo_detail_local_service.dart';
import 'package:repoviewr/github/detail/infrastructure/repo_detail_remote_service.dart';

class RepoDetailRepository {
  final RepoDetailRemoteService _remoteService;
  final RepoDetailLocalService _localService;

  RepoDetailRepository(this._remoteService, this._localService);

  Future<Either<GithubFailure, Fresh<GithubRepoDetail?>>> getRepoDetail(
      String fullRepoName) async {
    try {
      final htmlRemoteResponse =
          await _remoteService.getReadmeHtml(fullRepoName);
      return right(
        await htmlRemoteResponse.when(
          noConnection: () async => Fresh.no(
            await _localService.getRepDetail(fullRepoName).then(
                  (dto) => dto?.toDomain(),
                ),
          ),
          notModified: (_) async {
            final starred = await _remoteService.getStarredStatus(fullRepoName);
            final cached = await _localService.getRepDetail(fullRepoName);
            final withUpdatedStarredField =
                cached?.copyWith(starred: starred ?? false);
            return Fresh.yes(withUpdatedStarredField?.toDomain());
          },
          withNewData: (html, _) async {
            final starred = await _remoteService.getStarredStatus(fullRepoName);
            final newDataDTO = GithubRepoDetailDTO(
                fullName: fullRepoName, html: html, starred: starred ?? false);
            await _localService.upsertRepoDetail(newDataDTO);
            return Fresh.yes(newDataDTO.toDomain());
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }

  Future<Either<GithubFailure, Unit?>> switchStarredStatus(
    GithubRepoDetail repoDetail,
  ) async {
    try {
      final response = await _remoteService.siwtchStarredStatus(
          repoDetail.fullName,
          isCurrentlyStarred: repoDetail.starred);
      return right(response);
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
