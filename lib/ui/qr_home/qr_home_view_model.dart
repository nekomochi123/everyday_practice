import 'dart:async';

import 'package:everyday_practice/ui/qr_home/qr_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/foundation/utill/viewmodel.dart';
import 'package:everyday_practice/ui/qr_reader/qr_reader_screen.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'qr_home_view_model.freezed.dart';

final qrHomeViewModelProvider = StateNotifierProvider.autoDispose<QRHomeViewModel, QRHomeViewModelState>(
      (ref) => QRHomeViewModel(const QRHomeViewModelState(), ref.read),
);

@freezed
class QRHomeViewModelState with _$QRHomeViewModelState {
  const factory QRHomeViewModelState({
    @Default('') String qrValue,
  }) = _QRHomeViewModelState;
}

class QRHomeViewModel extends ViewModel<QRHomeViewModelState> {
  QRHomeViewModel(super._state, super.read);

  void output(String qrValue){
    String formattedValue = qrValue.split('/').join('\n');
    state = state.copyWith.call(qrValue: formattedValue);
  }

  void goNext() {
    router.push(QRReaderScreen.routePath);
  }
}