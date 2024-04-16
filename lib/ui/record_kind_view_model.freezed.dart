// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_kind_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecordKindState _$RecordKindStateFromJson(Map<String, dynamic> json) {
  return _RecordKindState.fromJson(json);
}

/// @nodoc
mixin _$RecordKindState {
  List<RecordKind> get recordKinds => throw _privateConstructorUsedError;
  List<String> get records => throw _privateConstructorUsedError;
  String get selectedRecordKind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordKindStateCopyWith<RecordKindState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordKindStateCopyWith<$Res> {
  factory $RecordKindStateCopyWith(
          RecordKindState value, $Res Function(RecordKindState) then) =
      _$RecordKindStateCopyWithImpl<$Res, RecordKindState>;
  @useResult
  $Res call(
      {List<RecordKind> recordKinds,
      List<String> records,
      String selectedRecordKind});
}

/// @nodoc
class _$RecordKindStateCopyWithImpl<$Res, $Val extends RecordKindState>
    implements $RecordKindStateCopyWith<$Res> {
  _$RecordKindStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordKinds = null,
    Object? records = null,
    Object? selectedRecordKind = null,
  }) {
    return _then(_value.copyWith(
      recordKinds: null == recordKinds
          ? _value.recordKinds
          : recordKinds // ignore: cast_nullable_to_non_nullable
              as List<RecordKind>,
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedRecordKind: null == selectedRecordKind
          ? _value.selectedRecordKind
          : selectedRecordKind // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordKindStateImplCopyWith<$Res>
    implements $RecordKindStateCopyWith<$Res> {
  factory _$$RecordKindStateImplCopyWith(_$RecordKindStateImpl value,
          $Res Function(_$RecordKindStateImpl) then) =
      __$$RecordKindStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RecordKind> recordKinds,
      List<String> records,
      String selectedRecordKind});
}

/// @nodoc
class __$$RecordKindStateImplCopyWithImpl<$Res>
    extends _$RecordKindStateCopyWithImpl<$Res, _$RecordKindStateImpl>
    implements _$$RecordKindStateImplCopyWith<$Res> {
  __$$RecordKindStateImplCopyWithImpl(
      _$RecordKindStateImpl _value, $Res Function(_$RecordKindStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordKinds = null,
    Object? records = null,
    Object? selectedRecordKind = null,
  }) {
    return _then(_$RecordKindStateImpl(
      recordKinds: null == recordKinds
          ? _value._recordKinds
          : recordKinds // ignore: cast_nullable_to_non_nullable
              as List<RecordKind>,
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedRecordKind: null == selectedRecordKind
          ? _value.selectedRecordKind
          : selectedRecordKind // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecordKindStateImpl
    with DiagnosticableTreeMixin
    implements _RecordKindState {
  const _$RecordKindStateImpl(
      {required final List<RecordKind> recordKinds,
      required final List<String> records,
      required this.selectedRecordKind})
      : _recordKinds = recordKinds,
        _records = records;

  factory _$RecordKindStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecordKindStateImplFromJson(json);

  final List<RecordKind> _recordKinds;
  @override
  List<RecordKind> get recordKinds {
    if (_recordKinds is EqualUnmodifiableListView) return _recordKinds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recordKinds);
  }

  final List<String> _records;
  @override
  List<String> get records {
    if (_records is EqualUnmodifiableListView) return _records;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final String selectedRecordKind;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordKindState(recordKinds: $recordKinds, records: $records, selectedRecordKind: $selectedRecordKind)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordKindState'))
      ..add(DiagnosticsProperty('recordKinds', recordKinds))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('selectedRecordKind', selectedRecordKind));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordKindStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recordKinds, _recordKinds) &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.selectedRecordKind, selectedRecordKind) ||
                other.selectedRecordKind == selectedRecordKind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recordKinds),
      const DeepCollectionEquality().hash(_records),
      selectedRecordKind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordKindStateImplCopyWith<_$RecordKindStateImpl> get copyWith =>
      __$$RecordKindStateImplCopyWithImpl<_$RecordKindStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecordKindStateImplToJson(
      this,
    );
  }
}

abstract class _RecordKindState implements RecordKindState {
  const factory _RecordKindState(
      {required final List<RecordKind> recordKinds,
      required final List<String> records,
      required final String selectedRecordKind}) = _$RecordKindStateImpl;

  factory _RecordKindState.fromJson(Map<String, dynamic> json) =
      _$RecordKindStateImpl.fromJson;

  @override
  List<RecordKind> get recordKinds;
  @override
  List<String> get records;
  @override
  String get selectedRecordKind;
  @override
  @JsonKey(ignore: true)
  _$$RecordKindStateImplCopyWith<_$RecordKindStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
