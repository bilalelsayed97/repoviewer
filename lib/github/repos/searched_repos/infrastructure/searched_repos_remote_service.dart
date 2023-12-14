import 'package:dio/dio.dart';
import 'package:repoviewr/core/infrastructure/remote_response.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:repoviewr/github/core/infrastructure/github_repo_dto.dart';
import 'package:repoviewr/github/core/infrastructure/pagination_config.dart';
import 'package:repoviewr/github/repos/core/infrastructure/repos_remote_service.dart';

class SearchedReposRemoteService extends ReposRemoteService {
  // ignore: use_super_parameters
  SearchedReposRemoteService(
    Dio dio,
    GithubHeadersCache githubHeadersCache,
  ) : super(dio, githubHeadersCache);
  Future<RemoteResponse<List<GithubRepoDTO>>> getSearchedReposPage(
    String query,
    int page,
  ) async =>
      super.getPage(
          requestUri: Uri.https(
            'api.github.com',
            '/search/repositories',
            {
              'q': query,
              'page': '$page',
              'per_page': PaginationConfig.itemsPerPage.toString(),
            },
          ),
          jsonDataSelector: (json) => json['items'] as List<dynamic>);
}
