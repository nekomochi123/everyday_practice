import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/record_kind.dart';
import 'package:everyday_practice/repository/record_kind_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:everyday_practice/foundation/utill/viewmodel.dart';

part 'record_kind_view_model.freezed.dart';
part 'record_kind_view_model.g.dart';

final recordKindStateProvider = StateNotifierProvider.autoDispose<RecordKindStateNotifier, RecordKindState>(
  (ref) => RecordKindStateNotifier(const RecordKindState(recordKinds: [], records: [], selectedRecordKind: ''), ref.read),
);

@freezed
class RecordKindState with _$RecordKindState {
  const factory RecordKindState({
    required List<RecordKind> recordKinds,
    required List<String> records,
    required String selectedRecordKind,
  }) = _RecordKindState;

  factory RecordKindState.fromJson(Map<String, dynamic> json) => _$RecordKindStateFromJson(json);
}

class RecordKindStateNotifier extends ViewModel<RecordKindState> {
  RecordKindStateNotifier(super._state, super.read);

  Future<void> loadRecord() async {
    List<RecordKind> recordKindsValue = await loadRecordKinds();
    List<String> recordsValue = recordKindsValue.map((recordKind) => recordKind.recordKind).toList();
    state = state.copyWith(recordKinds: recordKindsValue, records: recordsValue);
  }

  void updateSelectedRecordKind(String newRecordKind) {
    state = state.copyWith(selectedRecordKind: newRecordKind);
  }
}
