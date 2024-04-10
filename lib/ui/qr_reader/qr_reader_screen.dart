import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:everyday_practice/ui/qr_reader/qr_reader_view_model.dart';

class QRReaderScreen extends HookConsumerWidget {
  const QRReaderScreen({
    super.key,
  });

  static const routePath = '/qr_reader';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'QRコードリーダー',
          ),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 600,
                child: MobileScanner(
                  controller: MobileScannerController(
                    detectionSpeed:
                    DetectionSpeed.noDuplicates,
                  ),
                  onDetect: (capture) {
                    ref.read(qrReaderViewModelProvider.notifier).getQRCode(capture);
                  },
                ),
              ),
              const Text(
                'QR コードをスキャンしてください',
                style:TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
    );
  }
}