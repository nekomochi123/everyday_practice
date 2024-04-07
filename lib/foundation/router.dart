import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/hapiness/happiness_screen.dart';
import 'package:everyday_practice/ui/happiness_check/happiness_check_screen.dart';

final routerProvider = Provider((ref) => GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) =>
          ScreenBase(child: child),
      routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
          const TopScreen(),
        ),
        GoRoute(
          path: '/sub',
          builder: (BuildContext context, GoRouterState state) =>
          const SubScreen(),
        ),
      ],
    ),
  ],
));
