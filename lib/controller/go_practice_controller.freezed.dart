// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_practice_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoPracticeState {
  AsyncValue<List<GoPracticeRepository>?> get users =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoPracticeStateCopyWith<GoPracticeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoPracticeStateCopyWith<$Res> {
  factory $GoPracticeStateCopyWith(
          GoPracticeState value, $Res Function(GoPracticeState) then) =
      _$GoPracticeStateCopyWithImpl<$Res, GoPracticeState>;
  @useResult
  $Res call({AsyncValue<List<GoPracticeRepository>?> users});
}

/// @nodoc
class _$GoPracticeStateCopyWithImpl<$Res, $Val extends GoPracticeState>
    implements $GoPracticeStateCopyWith<$Res> {
  _$GoPracticeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GoPracticeRepository>?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoPracticeStateImplCopyWith<$Res>
    implements $GoPracticeStateCopyWith<$Res> {
  factory _$$GoPracticeStateImplCopyWith(_$GoPracticeStateImpl value,
          $Res Function(_$GoPracticeStateImpl) then) =
      __$$GoPracticeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<GoPracticeRepository>?> users});
}

/// @nodoc
class __$$GoPracticeStateImplCopyWithImpl<$Res>
    extends _$GoPracticeStateCopyWithImpl<$Res, _$GoPracticeStateImpl>
    implements _$$GoPracticeStateImplCopyWith<$Res> {
  __$$GoPracticeStateImplCopyWithImpl(
      _$GoPracticeStateImpl _value, $Res Function(_$GoPracticeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$GoPracticeStateImpl(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<GoPracticeRepository>?>,
    ));
  }
}

/// @nodoc

class _$GoPracticeStateImpl implements _GoPracticeState {
  const _$GoPracticeStateImpl({this.users = const AsyncValue.data(null)});

  @override
  @JsonKey()
  final AsyncValue<List<GoPracticeRepository>?> users;

  @override
  String toString() {
    return 'GoPracticeState(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoPracticeStateImpl &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, users);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoPracticeStateImplCopyWith<_$GoPracticeStateImpl> get copyWith =>
      __$$GoPracticeStateImplCopyWithImpl<_$GoPracticeStateImpl>(
          this, _$identity);
}

abstract class _GoPracticeState implements GoPracticeState {
  const factory _GoPracticeState(
          {final AsyncValue<List<GoPracticeRepository>?> users}) =
      _$GoPracticeStateImpl;

  @override
  AsyncValue<List<GoPracticeRepository>?> get users;
  @override
  @JsonKey(ignore: true)
  _$$GoPracticeStateImplCopyWith<_$GoPracticeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
