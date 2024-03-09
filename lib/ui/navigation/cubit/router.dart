import 'package:flutter/material.dart';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:pragma/core/home/domain/entities/entities.dart';
import 'package:pragma/ui/home/view/detail_view.dart';
import 'package:pragma/ui/splash/splash.dart';

// import '../../../../ui/favorite/router.dart';
import '../../home/router.dart';
import '../scaffold_with_navigation.dart';
// import '../../../../ui/setting/router.dart';
// import '../view/scaffold_with_navigation.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: kDebugMode,
  initialLocation: SplashView.path,
  observers: [BotToastNavigatorObserver()],
  routes: [
    GoRoute(
      path: SplashView.path,
      name: SplashView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: const SplashView(),
      ),
    ),
    GoRoute(
      path: CatDetailView.path,
      name: CatDetailView.name,
      pageBuilder: (context, state) {
        final extra = state.extra as CatEntity;
        return NoTransitionPage(
          key: state.pageKey,
          child: CatDetailView.create(
            cat: extra,
          ),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return SelectionArea(
          child: ScaffoldWithNavigation(navigationShell: navigationShell),
        );
      },
      branches: [
        homeRoutes,
        // favoriteRoutes,
        // settingRoutes,
      ],
    ),
  ],
);
