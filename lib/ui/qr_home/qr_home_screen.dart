import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/qr_reader/qr_reader_view_model.dart';
import 'package:everyday_practice/ui/qr_home/qr_home_view_model.dart';

class QRHomeScreen extends HookConsumerWidget {
  const QRHomeScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrValue = ref.watch(qrReaderViewModelProvider.select((v) => v.scannedValue));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QRコードリーダー',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(qrValue),
            ElevatedButton(
              onPressed: () {
                ref.read(qrHomeViewModelProvider.notifier).goNext();
              },
              child: const Text('QRコードリーダーを開始'),
            ),
          ],
        ),
      ),
    );
  }
}
