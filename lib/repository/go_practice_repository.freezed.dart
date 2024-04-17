// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'go_practice_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GoPracticeRepository _$GoPracticeRepositoryFromJson(Map<String, dynamic> json) {
  return _GoPracticeRepository.fromJson(json);
}

/// @nodoc
mixin _$GoPracticeRepository {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoPracticeRepositoryCopyWith<GoPracticeRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoPracticeRepositoryCopyWith<$Res> {
  factory $GoPracticeRepositoryCopyWith(GoPracticeRepository value,
          $Res Function(GoPracticeRepository) then) =
      _$GoPracticeRepositoryCopyWithImpl<$Res, GoPracticeRepository>;
  @useResult
  $Res call({int id, String title, String kind});
}

/// @nodoc
class _$GoPracticeRepositoryCopyWithImpl<$Res,
        $Val extends GoPracticeRepository>
    implements $GoPracticeRepositoryCopyWith<$Res> {
  _$GoPracticeRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? kind = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoPracticeRepositoryImplCopyWith<$Res>
    implements $GoPracticeRepositoryCopyWith<$Res> {
  factory _$$GoPracticeRepositoryImplCopyWith(_$GoPracticeRepositoryImpl value,
          $Res Function(_$GoPracticeRepositoryImpl) then) =
      __$$GoPracticeRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String kind});
}

/// @nodoc
class __$$GoPracticeRepositoryImplCopyWithImpl<$Res>
    extends _$GoPracticeRepositoryCopyWithImpl<$Res, _$GoPracticeRepositoryImpl>
    implements _$$GoPracticeRepositoryImplCopyWith<$Res> {
  __$$GoPracticeRepositoryImplCopyWithImpl(_$GoPracticeRepositoryImpl _value,
      $Res Function(_$GoPracticeRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? kind = null,
  }) {
    return _then(_$GoPracticeRepositoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoPracticeRepositoryImpl implements _GoPracticeRepository {
  const _$GoPracticeRepositoryImpl(
      {required this.id, required this.title, required this.kind});

  factory _$GoPracticeRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoPracticeRepositoryImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String kind;

  @override
  String toString() {
    return 'GoPracticeRepository(id: $id, title: $title, kind: $kind)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoPracticeRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.kind, kind) || other.kind == kind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, kind);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoPracticeRepositoryImplCopyWith<_$GoPracticeRepositoryImpl>
      get copyWith =>
          __$$GoPracticeRepositoryImplCopyWithImpl<_$GoPracticeRepositoryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoPracticeRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GoPracticeRepository implements GoPracticeRepository {
  const factory _GoPracticeRepository(
      {required final int id,
      required final String title,
      required final String kind}) = _$GoPracticeRepositoryImpl;

  factory _GoPracticeRepository.fromJson(Map<String, dynamic> json) =
      _$GoPracticeRepositoryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get kind;
  @override
  @JsonKey(ignore: true)
  _$$GoPracticeRepositoryImplCopyWith<_$GoPracticeRepositoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
