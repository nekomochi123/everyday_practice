import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:everyday_practice/ui/selection_of_sex_and_name_screen.dart';

final routerProvider = Provider((ref) => GoRouter(
  initialLocation: '/',
  routes: [
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
          SelectionYourInfoScreen(),
        ),
      ],
    ),
);
