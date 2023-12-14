import 'dart:io';

import 'package:dio/dio.dart';
import 'package:repoviewr/core/infrastructure/network_exceptions.dart';
import 'package:repoviewr/core/infrastructure/remote_response.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:repoviewr/github/core/infrastructure/github_repo_dto.dart';
import 'package:http/http.dart' as http;

abstract class ReposRemoteService {
  final Dio _dio;
  final GithubHeadersCache _githubHeadersCache;

  ReposRemoteService(this._dio, this._githubHeadersCache);

  Future<RemoteResponse<List<GithubRepoDTO>>> getPage({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    final previousHeaders = await _githubHeadersCache.getHeaders(requestUri);

    try {
      await http.head(Uri.parse('https://www.google.com'));
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
        final convertedData = jsonDataSelector(response.data)
            .map((e) => GithubRepoDTO.fromJson(e as Map<String, dynamic>))
            .toList();
        return RemoteResponse.withNewData(convertedData,
            maxPage: headers.link?.maxPage ?? 1);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on SocketException catch (_) {
      return const RemoteResponse.noConnection();
    } on DioException catch (e) {
      if (e.response != null) {
        throw RestApiException(e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
