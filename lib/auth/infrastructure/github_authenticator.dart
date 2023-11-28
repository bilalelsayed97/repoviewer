import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:oauth2/oauth2.dart';
import 'package:repoviewr/auth/domain/auth_failure.dart';
import 'package:repoviewr/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:http/http.dart' as http;
import 'package:repoviewr/core/encoders.dart';
import 'package:repoviewr/core/infrastructure/dio_extensions.dart';

class GithubOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();
  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return httpClient.send(request);
  }
}

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  GithubAuthenticator(this._credentialsStorage, this._dio);
  static const clientId = '429473abec992e2fb43f';
  static const clientSecret = '2643add3837b33ce0be8ab840c67d245bca13b35';
  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse('https://github.com/login/oauth/authorize');
  static final tokenEndpoint =
      Uri.parse('https://github.com/login/oauth/access_token');
  static final revokationEndpoint =
      Uri.parse('https://api.github.com/applications/$clientId/token');
  static final redirectUrl = Uri.parse('http://localhost:3000/callback');

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      if (storedCredentials != null) {
        if (storedCredentials.canRefresh && storedCredentials.isExpired) {
          final filureOrCredentials = await refresh(storedCredentials);
          return filureOrCredentials.fold(
              (l) => null, (credentials) => credentials);
        }
      }
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  AuthorizationCodeGrant createGrant() {
    return AuthorizationCodeGrant(
      clientId,
      authorizationEndpoint,
      tokenEndpoint,
      secret: clientSecret,
      httpClient: GithubOAuthHttpClient(),
    );
  }

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(redirectUrl, scopes: scopes);
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> queryParams,
  ) async {
    try {
      final httpClinet = await grant.handleAuthorizationResponse(queryParams);
      _credentialsStorage.save(httpClinet.credentials);
      return right(unit);
    } on FormatException catch (failure) {
      return left(AuthFailure.server(message: failure.message));
    } on AuthorizationException catch (failure) {
      return left(AuthFailure.server(
          message: '${(failure.error)}: ${(failure.description)}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    final accessToken = await _credentialsStorage
        .read()
        .then((credentials) => credentials?.accessToken);

    final usernameAndPassword =
        stringToBase64.encode('$clientId:$clientSecret');

    try {
      try {
        _dio.deleteUri(
          revokationEndpoint,
          data: {
            'access_token': accessToken,
          },
          options: Options(headers: {
            'Authorization': 'basic $usernameAndPassword',
          }),
        );
      } on DioException catch (e) {
        if (e.isNoConnectionError) {
          //!token won't be revoked
        } else {
          rethrow;
        }
      }
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
      Credentials credentials) async {
    try {
      final refreshCredentials = await credentials.refresh(
        identifier: clientId,
        secret: clientSecret,
        httpClient: GithubOAuthHttpClient(),
      );
      _credentialsStorage.save(refreshCredentials);
      return right(refreshCredentials);
    } on FormatException {
      return left(const AuthFailure.storage());
    } on AuthorizationException catch (e) {
      return left(
          AuthFailure.server(message: '${(e.error)}:${(e.description)}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
