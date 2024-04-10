// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_reader_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QRReaderViewModelState {
  Barcode? get myBarcode => throw _privateConstructorUsedError;
  String get scannedValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QRReaderViewModelStateCopyWith<QRReaderViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRReaderViewModelStateCopyWith<$Res> {
  factory $QRReaderViewModelStateCopyWith(QRReaderViewModelState value,
          $Res Function(QRReaderViewModelState) then) =
      _$QRReaderViewModelStateCopyWithImpl<$Res, QRReaderViewModelState>;
  @useResult
  $Res call({Barcode? myBarcode, String scannedValue});
}

/// @nodoc
class _$QRReaderViewModelStateCopyWithImpl<$Res,
        $Val extends QRReaderViewModelState>
    implements $QRReaderViewModelStateCopyWith<$Res> {
  _$QRReaderViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myBarcode = freezed,
    Object? scannedValue = null,
  }) {
    return _then(_value.copyWith(
      myBarcode: freezed == myBarcode
          ? _value.myBarcode
          : myBarcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      scannedValue: null == scannedValue
          ? _value.scannedValue
          : scannedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRReaderViewModelStateImplCopyWith<$Res>
    implements $QRReaderViewModelStateCopyWith<$Res> {
  factory _$$QRReaderViewModelStateImplCopyWith(
          _$QRReaderViewModelStateImpl value,
          $Res Function(_$QRReaderViewModelStateImpl) then) =
      __$$QRReaderViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Barcode? myBarcode, String scannedValue});
}

/// @nodoc
class __$$QRReaderViewModelStateImplCopyWithImpl<$Res>
    extends _$QRReaderViewModelStateCopyWithImpl<$Res,
        _$QRReaderViewModelStateImpl>
    implements _$$QRReaderViewModelStateImplCopyWith<$Res> {
  __$$QRReaderViewModelStateImplCopyWithImpl(
      _$QRReaderViewModelStateImpl _value,
      $Res Function(_$QRReaderViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myBarcode = freezed,
    Object? scannedValue = null,
  }) {
    return _then(_$QRReaderViewModelStateImpl(
      myBarcode: freezed == myBarcode
          ? _value.myBarcode
          : myBarcode // ignore: cast_nullable_to_non_nullable
              as Barcode?,
      scannedValue: null == scannedValue
          ? _value.scannedValue
          : scannedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QRReaderViewModelStateImpl implements _QRReaderViewModelState {
  const _$QRReaderViewModelStateImpl(
      {this.myBarcode = null, this.scannedValue = ''});

  @override
  @JsonKey()
  final Barcode? myBarcode;
  @override
  @JsonKey()
  final String scannedValue;

  @override
  String toString() {
    return 'QRReaderViewModelState(myBarcode: $myBarcode, scannedValue: $scannedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRReaderViewModelStateImpl &&
            (identical(other.myBarcode, myBarcode) ||
                other.myBarcode == myBarcode) &&
            (identical(other.scannedValue, scannedValue) ||
                other.scannedValue == scannedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myBarcode, scannedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRReaderViewModelStateImplCopyWith<_$QRReaderViewModelStateImpl>
      get copyWith => __$$QRReaderViewModelStateImplCopyWithImpl<
          _$QRReaderViewModelStateImpl>(this, _$identity);
}

abstract class _QRReaderViewModelState implements QRReaderViewModelState {
  const factory _QRReaderViewModelState(
      {final Barcode? myBarcode,
      final String scannedValue}) = _$QRReaderViewModelStateImpl;

  @override
  Barcode? get myBarcode;
  @override
  String get scannedValue;
  @override
  @JsonKey(ignore: true)
  _$$QRReaderViewModelStateImplCopyWith<_$QRReaderViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
