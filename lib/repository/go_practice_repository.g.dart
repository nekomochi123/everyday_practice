// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_practice_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoPracticeRepositoryImpl _$$GoPracticeRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GoPracticeRepositoryImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      kind: json['kind'] as int? ?? 0,
    );

Map<String, dynamic> _$$GoPracticeRepositoryImplToJson(
        _$GoPracticeRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'kind': instance.kind,
    };
