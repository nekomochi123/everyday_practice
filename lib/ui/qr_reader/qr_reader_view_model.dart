import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/foundation/utill/viewmodel.dart';
import 'package:everyday_practice/ui/qr_reader/qr_reader_screen.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'qr_reader_view_model.freezed.dart';

final qrReaderViewModelProvider = StateNotifierProvider.autoDispose<QRReaderViewModel, QRReaderViewModelState>(
      (ref) => QRReaderViewModel(const QRReaderViewModelState(), ref.read),
);

@freezed
class QRReaderViewModelState with _$QRReaderViewModelState {
  const factory QRReaderViewModelState({
    @Default(null) Barcode? myBarcode,
    @Default('') String scannedValue,
  }) = _QRReaderViewModelState;
}

class QRReaderViewModel extends ViewModel<QRReaderViewModelState> {
  QRReaderViewModel(super._state, super.read);

  void getQRCode(Barcode? value) {
    if (value != null && value.rawValue!.contains('\/')) {
      state = state.copyWith.call(myBarcode: value, scannedValue: value.rawValue ?? '');
      debugPrint(value.rawValue);
    }
  }
  void goNext() {
    router.push(QRReaderScreen.routePath);
  }
}