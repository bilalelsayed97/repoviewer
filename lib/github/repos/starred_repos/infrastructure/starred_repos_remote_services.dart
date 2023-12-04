import 'package:dio/dio.dart';
import 'package:repoviewr/core/infrastructure/dio_extensions.dart';
import 'package:repoviewr/core/infrastructure/network_exceptions.dart';
import 'package:repoviewr/core/infrastructure/remote_response.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:repoviewr/github/core/infrastructure/github_repo_dto.dart';
import 'package:repoviewr/github/core/infrastructure/pagination_config.dart';

class StarredReposRemoteServices {
  final Dio _dio;
  final GithubHeadersCache _githubHeadersCache;

  StarredReposRemoteServices(this._dio, this._githubHeadersCache);

  Future<RemoteResponse<List<GithubRepoDTO>>> getStarredReposPage(
    int page,
  ) async {
    final requestUri = Uri.https('api.github.com', '/user/starred', {
      'page': '$page',
      'per_page': PaginationConfig.itemsPerPage.toString(),
    });

    final previousHeaders = await _githubHeadersCache.getHeaders(requestUri);

    try {
      final response = await _dio.getUri(requestUri,
          options: Options(headers: {
            'If-None-Match': previousHeaders?.etag ?? '',
          }));
      if (response.statusCode == 304) {
        return RemoteResponse.notModified(
            maxPage: previousHeaders?.link?.maxPage ?? 0);
      } else if (response.statusCode == 200) {
        final headers = GithubHeaders.parse(response);
        await _githubHeadersCache.saveHeaders(requestUri, headers);
        final convertedData = (response.data as List<dynamic>)
            .map((e) => GithubRepoDTO.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(convertedData,
            maxPage: headers.link?.maxPage ?? 1);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioException catch (e) {
      if (e.isNoConnectionError) {
        return RemoteResponse.noConnection(
            maxPage: previousHeaders?.link?.maxPage ?? 0);
      } else if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
