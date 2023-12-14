import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/', initial: true),
        AutoRoute(page: SignInRoute.page, path: '/sign-in'),
        AutoRoute(page: AuthorizationRoute.page, path: '/auth'),
        AutoRoute(page: StarredReposRoute.page, path: '/starred'),
        AutoRoute(page: RepoDescriptionRoute.page, path: '/description'),
        AutoRoute(page: SearchedReposRoute.page, path: '/search'),
      ];
}

class AppRouterSingleton {
  static final AppRouterSingleton _instance = AppRouterSingleton._internal();
  late final AppRouter appRouter;

  factory AppRouterSingleton() {
    return _instance;
  }

  AppRouterSingleton._internal() {
    appRouter = AppRouter();
  }
}
