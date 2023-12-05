import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:repoviewr/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:repoviewr/auth/infrastructure/github_authenticator.dart';
import 'package:repoviewr/auth/infrastructure/oauth2_interceptor.dart';
import 'package:repoviewr/core/infrastructure/sembast_database.dart';
import 'package:repoviewr/github/core/infrastructure/github_headers_cache.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos/starred_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_local_service.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_remote_services.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_repository.dart';

final getIt = GetIt.instance;
Future<void> initLocator() async {
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  getIt
      .registerSingleton<CredentialsStorage>(SecureCredentialsStorage(getIt()));

  getIt.registerSingleton<Dio>(Dio(), instanceName: 'dioForAuthProvider');

  getIt.registerSingleton<GithubAuthenticator>(
      GithubAuthenticator(getIt(), getIt(instanceName: 'dioForAuthProvider')));

  getIt.registerSingleton<AuthCubit>(AuthCubit(getIt()));

  getIt.registerSingleton<SembastDatabase>(SembastDatabase());

  getIt.registerSingleton<GithubHeadersCache>(GithubHeadersCache(getIt()));

  getIt.registerSingleton<StarredReposLocalService>(
      StarredReposLocalService(getIt()));

  getIt.registerSingleton<StarredReposRepository>(
      StarredReposRepository(getIt(), getIt()));

  getIt
      .registerSingleton<StarredReposRemoteServices>(StarredReposRemoteServices(
    getIt(instanceName: 'dioProvider'),
    getIt(),
  ));

  getIt.registerSingleton<Interceptor>(OAuth2Interceptor(
    getIt(),
    getIt(),
    getIt(instanceName: 'dioForAuthProvider'),
  ));

  getIt.registerSingleton<Dio>(
      Dio()
        ..options = BaseOptions(headers: {
          'Accept': 'application/vnd.github.v3.html+json',
        })
        ..interceptors.add(getIt(instanceName: 'dioForAuthProvider')),
      instanceName: 'dioProvider');

  getIt.registerSingleton<StarredReposCubit>(StarredReposCubit(getIt()));
}
