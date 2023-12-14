import 'package:dartz/dartz.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/core/infrastructure/network_exceptions.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';
import 'package:repoviewr/github/repos/core/infrastructure/extensions.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_local_service.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_remote_services.dart';

class StarredReposRepository {
  final StarredReposRemoteServices _remoteServices;
  final StarredReposLocalService _localService;

  StarredReposRepository(this._remoteServices, this._localService);

  Future<Either<GithubFailure, Fresh<List<GithubRepo>>>> getStarredReposPage(
      int page) async {
    try {
      final remotePageItems = await _remoteServices.getStarredReposPage(page);
      return right(
        await remotePageItems.when(
          noConnection: () async {
            final localData =
                await _localService.getPage(page).then((_) => _.toDomain());
            return Fresh.no(
              localData,
              isNextPageAvailable:
                  page < await _localService.getLocalPageCount(),
            );
          },
          notModified: (maxPage) async {
            return Fresh.yes(
              await _localService.getPage(page).then((_) => _.toDomain()),
              isNextPageAvailable: page < maxPage,
            );
          },
          withNewData: (data, maxPage) async {
            await _localService.upsertPage(data, page);
            return Fresh.yes(
              data.toDomain(),
              isNextPageAvailable: page < maxPage,
            );
          },
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
