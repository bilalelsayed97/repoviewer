import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:repoviewr/auth/infrastructure/credentials_storage/secure_credentials_storage.dart';
import 'package:repoviewr/auth/infrastructure/github_authenticator.dart';

final getIt = GetIt.instance;
void setUpLocator() {
  // final flutterSecureStorageLocator =
  getIt.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());

  // final secureCredentialsStorageLocator =
  getIt.registerSingleton<CredentialsStorage>(
      SecureCredentialsStorage(getIt.get<FlutterSecureStorage>()));

  // final gitHubAuthLocator =
  getIt.registerSingleton<GithubAuthenticator>(
      GithubAuthenticator(getIt.get<CredentialsStorage>(), Dio()));

  // final authCubitLocator =
  getIt.registerSingleton<AuthCubit>(
      AuthCubit(getIt.get<GithubAuthenticator>()));
}
