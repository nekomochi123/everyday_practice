// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hapiness_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HappinessData {
  HappinessKind? get happiness => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HappinessDataCopyWith<HappinessData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HappinessDataCopyWith<$Res> {
  factory $HappinessDataCopyWith(
          HappinessData value, $Res Function(HappinessData) then) =
      _$HappinessDataCopyWithImpl<$Res, HappinessData>;
  @useResult
  $Res call({HappinessKind? happiness});
}

/// @nodoc
class _$HappinessDataCopyWithImpl<$Res, $Val extends HappinessData>
    implements $HappinessDataCopyWith<$Res> {
  _$HappinessDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? happiness = freezed,
  }) {
    return _then(_value.copyWith(
      happiness: freezed == happiness
          ? _value.happiness
          : happiness // ignore: cast_nullable_to_non_nullable
              as HappinessKind?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HappinessDataImplCopyWith<$Res>
    implements $HappinessDataCopyWith<$Res> {
  factory _$$HappinessDataImplCopyWith(
          _$HappinessDataImpl value, $Res Function(_$HappinessDataImpl) then) =
      __$$HappinessDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HappinessKind? happiness});
}

/// @nodoc
class __$$HappinessDataImplCopyWithImpl<$Res>
    extends _$HappinessDataCopyWithImpl<$Res, _$HappinessDataImpl>
    implements _$$HappinessDataImplCopyWith<$Res> {
  __$$HappinessDataImplCopyWithImpl(
      _$HappinessDataImpl _value, $Res Function(_$HappinessDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? happiness = freezed,
  }) {
    return _then(_$HappinessDataImpl(
      happiness: freezed == happiness
          ? _value.happiness
          : happiness // ignore: cast_nullable_to_non_nullable
              as HappinessKind?,
    ));
  }
}

/// @nodoc

class _$HappinessDataImpl implements _HappinessData {
  const _$HappinessDataImpl({this.happiness = null});

  @override
  @JsonKey()
  final HappinessKind? happiness;

  @override
  String toString() {
    return 'HappinessData(happiness: $happiness)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HappinessDataImpl &&
            (identical(other.happiness, happiness) ||
                other.happiness == happiness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, happiness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HappinessDataImplCopyWith<_$HappinessDataImpl> get copyWith =>
      __$$HappinessDataImplCopyWithImpl<_$HappinessDataImpl>(this, _$identity);
}

abstract class _HappinessData implements HappinessData {
  const factory _HappinessData({final HappinessKind? happiness}) =
      _$HappinessDataImpl;

  @override
  HappinessKind? get happiness;
  @override
  @JsonKey(ignore: true)
  _$$HappinessDataImplCopyWith<_$HappinessDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
