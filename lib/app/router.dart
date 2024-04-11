import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/home_screen.dart';

final routerProvider = Provider(
      (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(path: HomeScreen.routePath,
        builder:(_, __) => const HomeScreen(),
      ),
    ],
  ),
);
