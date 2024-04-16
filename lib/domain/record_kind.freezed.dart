// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_kind.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordKind _$RecordKindFromJson(Map<String, dynamic> json) {
  return _RecordKind.fromJson(json);
}

/// @nodoc
mixin _$RecordKind {
  String get title => throw _privateConstructorUsedError;
  String get recordKind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordKindCopyWith<RecordKind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordKindCopyWith<$Res> {
  factory $RecordKindCopyWith(RecordKind value, $Res Function(RecordKind) then) = _$RecordKindCopyWithImpl<$Res, RecordKind>;
  @useResult
  $Res call({String title, String recordKind});
}

/// @nodoc
class _$RecordKindCopyWithImpl<$Res, $Val extends RecordKind> implements $RecordKindCopyWith<$Res> {
  _$RecordKindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recordKind = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordKind: null == recordKind
          ? _value.recordKind
          : recordKind // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordKindImplCopyWith<$Res> implements $RecordKindCopyWith<$Res> {
  factory _$$RecordKindImplCopyWith(_$RecordKindImpl value, $Res Function(_$RecordKindImpl) then) = __$$RecordKindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String recordKind});
}

/// @nodoc
class __$$RecordKindImplCopyWithImpl<$Res> extends _$RecordKindCopyWithImpl<$Res, _$RecordKindImpl> implements _$$RecordKindImplCopyWith<$Res> {
  __$$RecordKindImplCopyWithImpl(_$RecordKindImpl _value, $Res Function(_$RecordKindImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? recordKind = null,
  }) {
    return _then(_$RecordKindImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      recordKind: null == recordKind
          ? _value.recordKind
          : recordKind // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordKindImpl with DiagnosticableTreeMixin implements _RecordKind {
  const _$RecordKindImpl({required this.title, required this.recordKind});

  factory _$RecordKindImpl.fromJson(Map<String, dynamic> json) => _$$RecordKindImplFromJson(json);

  @override
  final String title;
  @override
  final String recordKind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordKind(title: $title, recordKind: $recordKind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordKind'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('recordKind', recordKind));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordKindImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.recordKind, recordKind) || other.recordKind == recordKind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, recordKind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordKindImplCopyWith<_$RecordKindImpl> get copyWith => __$$RecordKindImplCopyWithImpl<_$RecordKindImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordKindImplToJson(
      this,
    );
  }
}

abstract class _RecordKind implements RecordKind {
  const factory _RecordKind({required final String title, required final String recordKind}) = _$RecordKindImpl;

  factory _RecordKind.fromJson(Map<String, dynamic> json) = _$RecordKindImpl.fromJson;

  @override
  String get title;
  @override
  String get recordKind;
  @override
  @JsonKey(ignore: true)
  _$$RecordKindImplCopyWith<_$RecordKindImpl> get copyWith => throw _privateConstructorUsedError;
}
