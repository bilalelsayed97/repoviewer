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
import 'package:repoviewr/github/detail/application/repo_detail_cubit/repo_detail_cubit.dart';
import 'package:repoviewr/github/detail/infrastructure/repo_detail_local_service.dart';
import 'package:repoviewr/github/detail/infrastructure/repo_detail_remote_service.dart';
import 'package:repoviewr/github/detail/infrastructure/repo_detail_repository.dart';
import 'package:repoviewr/github/repos/core/application/paginated_repos_cubit/paginated_repos_cubit.dart';
import 'package:repoviewr/github/repos/searched_repos/application/searched_repos_cubit/searched_repos_cubit.dart';
import 'package:repoviewr/github/repos/searched_repos/infrastructure/searched_repos_remote_service.dart';
import 'package:repoviewr/github/repos/searched_repos/infrastructure/searched_repos_repository.dart';
import 'package:repoviewr/github/repos/starred_repos/application/starred_repos_cubit/starred_repos_cubit.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_local_service.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_remote_services.dart';
import 'package:repoviewr/github/repos/starred_repos/infrastructure/starred_repos_repository.dart';
import 'package:repoviewr/search/application/search_history_cubit/search_history_cubit.dart';
import 'package:repoviewr/search/infrastructure/search_hisrory_repository.dart';

final getIt = GetIt.instance;
Future<void> initLocator() async {
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  getIt.registerSingleton<Dio>(Dio(), instanceName: 'dioForAuthProvider');

  getIt
      .registerSingleton<CredentialsStorage>(SecureCredentialsStorage(getIt()));

  getIt.registerSingleton<GithubAuthenticator>(
      GithubAuthenticator(getIt(), getIt(instanceName: 'dioForAuthProvider')));

  getIt.registerSingleton<AuthCubit>(AuthCubit(getIt()));

  getIt.registerSingleton<SembastDatabase>(SembastDatabase.instance);

  getIt.registerSingleton<GithubHeadersCache>(GithubHeadersCache(getIt()));

  getIt.registerSingleton<StarredReposLocalService>(
      StarredReposLocalService(getIt<SembastDatabase>()));

  getIt.registerSingleton<Interceptor>(OAuth2Interceptor(
    getIt(),
    getIt(),
    getIt<Dio>(instanceName: 'dioForAuthProvider'),
  ));

  getIt.registerSingleton<Dio>(
      Dio()
        ..options = BaseOptions(
          headers: {
            'Accept': 'application/vnd.github.v3.html+json',
          },
          validateStatus: (statusCode) =>
              statusCode != null && statusCode >= 200 && statusCode < 400,
        )
        ..interceptors.add(getIt()),
      instanceName: 'dioProviderWithToken');

  getIt
      .registerSingleton<StarredReposRemoteServices>(StarredReposRemoteServices(
    getIt(instanceName: 'dioProviderWithToken'),
    getIt(),
  ));

  getIt.registerSingleton<StarredReposRepository>(
      StarredReposRepository(getIt(), getIt()));

  getIt.registerSingleton<PaginatedReposCubit>(PaginatedReposCubit());

  getIt.registerSingleton<StarredReposCubit>(StarredReposCubit(getIt()));

  getIt.registerSingleton<SearchedReposRemoteService>(
      SearchedReposRemoteService(
          getIt(instanceName: 'dioProviderWithToken'), getIt()));

  getIt.registerSingleton<SearchedReposRepository>(
      SearchedReposRepository(getIt()));

  getIt.registerSingleton<SearchedReposCubit>(SearchedReposCubit(getIt()));

  getIt.registerSingleton<SearchHisroryRepository>(
      SearchHisroryRepository(getIt()));

  getIt.registerSingleton<SearchHistoryCubit>(SearchHistoryCubit(getIt()));

  getIt.registerSingleton<RepoDetailRemoteService>(RepoDetailRemoteService(
      getIt(instanceName: 'dioProviderWithToken'), getIt()));

  getIt.registerSingleton<RepoDetailLocalService>(
      RepoDetailLocalService(getIt(), getIt()));

  getIt.registerSingleton<RepoDetailRepository>(
      RepoDetailRepository(getIt(), getIt()));

  getIt.registerSingleton<RepoDetailCubit>(RepoDetailCubit(getIt()));
}
