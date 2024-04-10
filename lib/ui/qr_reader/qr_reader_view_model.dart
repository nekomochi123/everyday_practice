import 'dart:async';

import 'package:everyday_practice/ui/qr_home/qr_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/foundation/utill/viewmodel.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:everyday_practice/ui/qr_home/qr_home_view_model.dart';

part 'qr_reader_view_model.freezed.dart';

final qrReaderViewModelProvider = StateNotifierProvider.autoDispose<QRReaderViewModel, QRReaderViewModelState>(
      (ref) => QRReaderViewModel(const QRReaderViewModelState(), ref.read),
);

@freezed
class QRReaderViewModelState with _$QRReaderViewModelState {
  const factory QRReaderViewModelState({
    @Default(null) BarcodeCapture? myBarcode,
    @Default('') String scannedValue,
  }) = _QRReaderViewModelState;
}

class QRReaderViewModel extends ViewModel<QRReaderViewModelState> {
  QRReaderViewModel(super._state, super.read);

  void getQRCode(BarcodeCapture value) {
    if (value != null && value.barcodes[0].rawValue!.contains('\/')) {
      String formattedValue = value.barcodes[0].rawValue ?? '';
      formattedValue = formattedValue.split('/').join('\n');
      state = state.copyWith.call(myBarcode: value, scannedValue: formattedValue);
      goNext();
    }
  }

  void goNext() {
    router.push(QRHomeScreen.routePath);
  }
}