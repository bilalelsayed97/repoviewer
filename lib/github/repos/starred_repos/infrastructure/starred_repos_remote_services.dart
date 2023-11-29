import 'package:dio/dio.dart';
import 'package:repoviewr/core/infrastructure/remote_response.dart';
import 'package:repoviewr/github/core/infrastructure/github_repo_dto.dart';

class StarredReposRemoteServices {
  final Dio _dio;

  StarredReposRemoteServices(this._dio);
}

Future<RemoteResponse<List<GithubRepoDTO>>> getStarredReposPage(
  int page,
) async {}
