import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/hapiness_factor/happiness_factor_screen.dart';
import 'package:everyday_practice/ui/happiness_level/happiness_level_screen.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: HappinessLevelScreen.routePath,
        builder: (_, __) => const HappinessLevelScreen(),
      ),
      GoRoute(
        path: HappinessFactorScreen.routePath,
        builder: (_, __) => const HappinessFactorScreen(),
      ),
    ],
  ),
);
