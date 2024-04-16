import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/record_kind_screen.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: RecordKindScreen.routePath,
        builder: (_, __) => const RecordKindScreen(),
      ),
    ],
  ),
);
