import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/qr_reader/qr_reader_view_model.dart';

class QRHomeScreen extends HookConsumerWidget {
  const QRHomeScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QRコードリーダー',
        ),
      ),
      body:Center(child: ElevatedButton(
        onPressed: () {
          ref.read(qrReaderViewModelProvider.notifier).goNext();
          },
        child: const Text('QRコードリーダーを開始'),
      ),
      ),
    );
  }
}