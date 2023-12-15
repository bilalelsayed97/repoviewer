import 'package:dio/dio.dart';
import 'package:repoviewr/auth/application/auth_cubit/auth_cubit.dart';
import 'package:repoviewr/auth/infrastructure/github_authenticator.dart';

class OAuth2Interceptor extends Interceptor {
  final GithubAuthenticator _authenticator;
  final AuthCubit _authCubit;
  final Dio _dio;

  OAuth2Interceptor(this._authenticator, this._authCubit, this._dio);
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final credentials = await _authenticator.getSignedInCredentials();
    final modifiedOptions = options
      ..headers.addAll(
        credentials == null
            ? {}
            : {
                'Authorization': 'bearer ${credentials.accessToken}',
              },
      );
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(
      DioException err, ErrorInterceptorHandler handler) async {
    final errorResponse = err.response;
    if (errorResponse != null && errorResponse.statusCode == 401) {
      final credentials = await _authenticator.getSignedInCredentials();

      credentials != null && credentials.canRefresh
          ? await _authenticator.refresh(credentials)
          : _authenticator.clearCredentialsStroage();

      await _authCubit.checkAndUpdateStatus();

      final refreshedCredentials =
          await _authenticator.getSignedInCredentials();

      if (refreshedCredentials != null) {
        handler.resolve(await _dio.fetch(errorResponse.requestOptions
          ..headers['Authorization'] =
              'bearer ${refreshedCredentials.accessToken}'));
      } else {
        handler.next(err);
      }
    }
  }
}
