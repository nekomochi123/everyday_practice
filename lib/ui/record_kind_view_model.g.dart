// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_kind_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordKindStateImpl _$$RecordKindStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RecordKindStateImpl(
      recordKinds: (json['recordKinds'] as List<dynamic>)
          .map((e) => RecordKind.fromJson(e as Map<String, dynamic>))
          .toList(),
      records:
          (json['records'] as List<dynamic>).map((e) => e as String).toList(),
      selectedRecordKind: json['selectedRecordKind'] as String,
    );

Map<String, dynamic> _$$RecordKindStateImplToJson(
        _$RecordKindStateImpl instance) =>
    <String, dynamic>{
      'recordKinds': instance.recordKinds,
      'records': instance.records,
      'selectedRecordKind': instance.selectedRecordKind,
    };
