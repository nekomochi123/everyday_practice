// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_of_sex_and_name_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserInfo {
  UserSelection? get user_selection => throw _privateConstructorUsedError;
  SexSelection? get sex_selection => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {UserSelection? user_selection,
      SexSelection? sex_selection,
      String name});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_selection = freezed,
    Object? sex_selection = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      user_selection: freezed == user_selection
          ? _value.user_selection
          : user_selection // ignore: cast_nullable_to_non_nullable
              as UserSelection?,
      sex_selection: freezed == sex_selection
          ? _value.sex_selection
          : sex_selection // ignore: cast_nullable_to_non_nullable
              as SexSelection?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserSelection? user_selection,
      SexSelection? sex_selection,
      String name});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_selection = freezed,
    Object? sex_selection = freezed,
    Object? name = null,
  }) {
    return _then(_$UserInfoImpl(
      user_selection: freezed == user_selection
          ? _value.user_selection
          : user_selection // ignore: cast_nullable_to_non_nullable
              as UserSelection?,
      sex_selection: freezed == sex_selection
          ? _value.sex_selection
          : sex_selection // ignore: cast_nullable_to_non_nullable
              as SexSelection?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserInfoImpl implements _UserInfo {
  const _$UserInfoImpl(
      {this.user_selection = null, this.sex_selection = null, this.name = ''});

  @override
  @JsonKey()
  final UserSelection? user_selection;
  @override
  @JsonKey()
  final SexSelection? sex_selection;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'UserInfo(user_selection: $user_selection, sex_selection: $sex_selection, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.user_selection, user_selection) ||
                other.user_selection == user_selection) &&
            (identical(other.sex_selection, sex_selection) ||
                other.sex_selection == sex_selection) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user_selection, sex_selection, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {final UserSelection? user_selection,
      final SexSelection? sex_selection,
      final String name}) = _$UserInfoImpl;

  @override
  UserSelection? get user_selection;
  @override
  SexSelection? get sex_selection;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
