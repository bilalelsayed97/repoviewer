import 'package:dio/dio.dart';
import 'package:repoviewr/core/infrastructure/remote_response.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:repoviewr/github/core/infrastructure/github_repo_dto.dart';
import 'package:repoviewr/github/core/infrastructure/pagination_config.dart';
import 'package:repoviewr/github/repos/core/infrastructure/repos_remote_service.dart';

class StarredReposRemoteServices extends ReposRemoteService {
  // ignore: use_super_parameters
  StarredReposRemoteServices(
    Dio dio,
    GithubHeadersCache githubHeadersCache,
  ) : super(dio, githubHeadersCache);

  Future<RemoteResponse<List<GithubRepoDTO>>> getStarredReposPage(
    int page,
  ) async =>
      super.getPage(
          requestUri: Uri.https(
            'api.github.com',
            '/user/starred',
            {
              'page': '$page',
              'per_page': PaginationConfig.itemsPerPage.toString(),
            },
          ),
          jsonDataSelector: (json) => json as List<dynamic>);
}
