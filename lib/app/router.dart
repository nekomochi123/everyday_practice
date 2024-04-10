import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/qr_home/qr_home_screen.dart';
import 'package:everyday_practice/ui/qr_reader/qr_reader_screen.dart';

final routerProvider = Provider(
    (ref) => GoRouter(
        routes: <GoRoute>[
          GoRoute(path: QRHomeScreen.routePath,
          builder:(_, __) => const QRHomeScreen(),
          ),
          GoRoute(path: QRReaderScreen.routePath,
          builder: (_, __) => const QRReaderScreen(),)
        ],
    ),
);

