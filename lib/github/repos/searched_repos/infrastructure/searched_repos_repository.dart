import 'package:dartz/dartz.dart';
import 'package:repoviewr/core/domain/fresh.dart';
import 'package:repoviewr/core/infrastructure/network_exceptions.dart';
import 'package:repoviewr/github/core/domain/github_failure.dart';
import 'package:repoviewr/github/core/domain/github_repo.dart';
import 'package:repoviewr/github/repos/core/infrastructure/extensions.dart';
import 'package:repoviewr/github/repos/searched_repos/infrastructure/searched_repos_remote_service.dart';

class SearchedReposRepository {
  final SearchedReposRemoteService _remoteService;

  SearchedReposRepository(this._remoteService);
  Future<Either<GithubFailure, Fresh<List<GithubRepo>>>> getSearchedReposPage(
    String query,
    int page,
  ) async {
    try {
      final remotePageItems =
          await _remoteService.getSearchedReposPage(query, page);
      return right(
        remotePageItems.maybeWhen(
          orElse: () {
            return Fresh.no([], isNextPageAvailable: false);
          },
          withNewData: (data, maxPage) => Fresh.yes(
            data.toDomain(),
            isNextPageAvailable: page < maxPage,
          ),
        ),
      );
    } on RestApiException catch (e) {
      return left(GithubFailure.api(e.errorCode));
    }
  }
}
