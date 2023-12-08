import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repoviewr/auth/domain/auth_failure.dart';
import 'package:repoviewr/auth/infrastructure/github_authenticator.dart';
import 'package:repoviewr/core/routes/app_router.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

typedef AuthUriCallback = Future<Uri> Function(Uri authorizationUrl);

class AuthCubit extends Cubit<AuthState> {
  final GithubAuthenticator _authenticator;
  final AppRouter _appRouter = AppRouter();

  AppRouter get appRouter {
    return _appRouter;
  }

  AuthCubit(this._authenticator) : super(const AuthState.initial());

  Future<void> checkAndUpdateStatus() async {
    // var state =
    (await _authenticator.isSignedIn())
        ? emit(const AuthState.authenticated())
        : emit(const AuthState.unauthenticated());
  }

  Future<void> signIn(AuthUriCallback authorizationCallback) async {
    final grant = _authenticator.createGrant();
    final uri = _authenticator.getAuthorizationUrl(grant);
    final redirectUrl = await authorizationCallback(uri);
    final response = await _authenticator.handleAuthorizationResponse(
        grant, redirectUrl.queryParameters);
    response.fold((failure) => emit(AuthState.failure(failure)),
        (r) => emit(const AuthState.authenticated()));
    grant.close();
  }

  Future<void> signOut() async {
    final response = await _authenticator.signOut();
    response.fold((failure) => emit(AuthState.failure(failure)),
        (r) => emit(const AuthState.unauthenticated()));
  }
}
