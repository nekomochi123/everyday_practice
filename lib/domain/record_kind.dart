import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'record_kind.freezed.dart';
part 'record_kind.g.dart';

@freezed
class RecordKind with _$RecordKind {
  const factory RecordKind({
    required String title,
    required String recordKind,
  }) = _RecordKind;

  factory RecordKind.fromJson(Map<String, dynamic> json) => _$RecordKindFromJson(json);
}
