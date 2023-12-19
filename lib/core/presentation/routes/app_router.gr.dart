// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:repoviewr/auth/presentation/authorization_page.dart' as _i1;
import 'package:repoviewr/auth/presentation/sign_in_page.dart' as _i4;
import 'package:repoviewr/github/core/domain/github_repo.dart' as _i9;
import 'package:repoviewr/github/detail/presentation/repo_detail_page.dart'
    as _i2;
import 'package:repoviewr/github/repos/searched_repos/presentation/searched_repos_page.dart'
    as _i3;
import 'package:repoviewr/github/repos/starred_repos/presentation/starred_repos_page.dart'
    as _i6;
import 'package:repoviewr/splash/presentation/splash_page.dart' as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AuthorizationPage(
          key: args.key,
          autorizationUrl: args.autorizationUrl,
          onAuthorizationCodeRedirectAttempt:
              args.onAuthorizationCodeRedirectAttempt,
        ),
      );
    },
    RepoDetailRoute.name: (routeData) {
      final args = routeData.argsAs<RepoDetailRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.RepoDetailPage(
          key: args.key,
          repo: args.repo,
        ),
      );
    },
    SearchedReposRoute.name: (routeData) {
      final args = routeData.argsAs<SearchedReposRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SearchedReposPage(
          key: args.key,
          query: args.query,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignInPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashPage(),
      );
    },
    StarredReposRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.StarredReposPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthorizationPage]
class AuthorizationRoute extends _i7.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i8.Key? key,
    required Uri autorizationUrl,
    required void Function(Uri) onAuthorizationCodeRedirectAttempt,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          AuthorizationRoute.name,
          args: AuthorizationRouteArgs(
            key: key,
            autorizationUrl: autorizationUrl,
            onAuthorizationCodeRedirectAttempt:
                onAuthorizationCodeRedirectAttempt,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const _i7.PageInfo<AuthorizationRouteArgs> page =
      _i7.PageInfo<AuthorizationRouteArgs>(name);
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({
    this.key,
    required this.autorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  final _i8.Key? key;

  final Uri autorizationUrl;

  final void Function(Uri) onAuthorizationCodeRedirectAttempt;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key, autorizationUrl: $autorizationUrl, onAuthorizationCodeRedirectAttempt: $onAuthorizationCodeRedirectAttempt}';
  }
}

/// generated route for
/// [_i2.RepoDetailPage]
class RepoDetailRoute extends _i7.PageRouteInfo<RepoDetailRouteArgs> {
  RepoDetailRoute({
    _i8.Key? key,
    required _i9.GithubRepo repo,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          RepoDetailRoute.name,
          args: RepoDetailRouteArgs(
            key: key,
            repo: repo,
          ),
          initialChildren: children,
        );

  static const String name = 'RepoDetailRoute';

  static const _i7.PageInfo<RepoDetailRouteArgs> page =
      _i7.PageInfo<RepoDetailRouteArgs>(name);
}

class RepoDetailRouteArgs {
  const RepoDetailRouteArgs({
    this.key,
    required this.repo,
  });

  final _i8.Key? key;

  final _i9.GithubRepo repo;

  @override
  String toString() {
    return 'RepoDetailRouteArgs{key: $key, repo: $repo}';
  }
}

/// generated route for
/// [_i3.SearchedReposPage]
class SearchedReposRoute extends _i7.PageRouteInfo<SearchedReposRouteArgs> {
  SearchedReposRoute({
    _i8.Key? key,
    required String query,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SearchedReposRoute.name,
          args: SearchedReposRouteArgs(
            key: key,
            query: query,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchedReposRoute';

  static const _i7.PageInfo<SearchedReposRouteArgs> page =
      _i7.PageInfo<SearchedReposRouteArgs>(name);
}

class SearchedReposRouteArgs {
  const SearchedReposRouteArgs({
    this.key,
    required this.query,
  });

  final _i8.Key? key;

  final String query;

  @override
  String toString() {
    return 'SearchedReposRouteArgs{key: $key, query: $query}';
  }
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StarredReposPage]
class StarredReposRoute extends _i7.PageRouteInfo<void> {
  const StarredReposRoute({List<_i7.PageRouteInfo>? children})
      : super(
          StarredReposRoute.name,
          initialChildren: children,
        );

  static const String name = 'StarredReposRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
