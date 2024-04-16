import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/record_kind.dart';
import 'package:everyday_practice/repository/record_kind_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:everyday_practice/foundation/utill/viewmodel.dart';

part 'record_kind_view_model.freezed.dart';
part 'record_kind_view_model.g.dart';

final recordKindStateProvider = StateNotifierProvider.autoDispose<RecordKindStateNotifier, RecordKindState>((ref) =>
    RecordKindStateNotifier(const RecordKindState(recordKinds: [], records: []), ref.read),
);

@freezed
class RecordKindState with _$RecordKindState {
  const factory RecordKindState({
    required List<RecordKind> recordKinds,
    required List<String> records,
  }) = _RecordKindState;

  factory RecordKindState.fromJson(Map<String, dynamic> json) => _$RecordKindStateFromJson(json);
}

class RecordKindStateNotifier extends ViewModel<RecordKindState> {
  RecordKindStateNotifier(super._state, super.read);

  Future<void> loadRecord() async {
    List<RecordKind> recordKindsValue = await loadRecordKinds();
    print(recordKindsValue);
    List<String> recordsValue = recordKindsValue.map((recordKind) => recordKind.recordKind).toList();
    print(recordsValue);
    state = state.copyWith(recordKinds: recordKindsValue, records: recordsValue);
  }
}
