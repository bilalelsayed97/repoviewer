import 'dart:io';

import 'package:dio/dio.dart';
import 'package:repoviewr/core/infrastructure/network_exceptions.dart';
import 'package:repoviewr/core/infrastructure/remote_response.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:http/http.dart' as http;

class RepoDetailRemoteService {
  final Dio _dio;
  final GithubHeadersCache _headersCache;

  RepoDetailRemoteService(
    this._dio,
    this._headersCache,
  );

  Future<RemoteResponse<String>> getReadmeHtml(String fullRepoName) async {
    final requestUri =
        Uri.https('api.github.com', '/repos/$fullRepoName/readme');

    final previousHeaders = await _headersCache.getHeaders(requestUri);

    try {
      await http.head(Uri.parse('https://www.google.com'));
      final response = await _dio.getUri(
        requestUri,
        options: Options(headers: {
          'If-None-Match': previousHeaders?.etag ?? '',
        }, responseType: ResponseType.plain),
      );

      if (response.statusCode == 304) {
        return const RemoteResponse.notModified(maxPage: 0);
      } else if (response.statusCode == 200) {
        final headers = GithubHeaders.parse(response);

        await _headersCache.saveHeaders(requestUri, headers);
        final html = response.data as String;
        return RemoteResponse.withNewData(html, maxPage: 0);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException catch (_) {
      return const RemoteResponse.noConnection();
    } on DioException catch (_) {
      rethrow;
    }
  }
}
