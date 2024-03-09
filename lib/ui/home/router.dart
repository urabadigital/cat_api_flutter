import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:pragma/ui/home/view/detail_view.dart';
import 'package:pragma/ui/home/view/home_view.dart';

final _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');

StatefulShellBranch homeRoutes = StatefulShellBranch(
  navigatorKey: _homeNavigatorKey,
  routes: [
    GoRoute(
      path: HomeView.path,
      name: HomeView.name,
      pageBuilder: (context, state) => NoTransitionPage(
        key: state.pageKey,
        child: HomeView.create(),
      ),
      routes: [
        GoRoute(
          path: CatDetailView.path,
          name: CatDetailView.name,
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: CatDetailView.create(
              referenceImageId: state.pathParameters['id'] as String,
            ),
          ),
        ),
      ],
    ),
  ],
);
