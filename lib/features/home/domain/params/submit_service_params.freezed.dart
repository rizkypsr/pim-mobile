// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_service_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubmitServiceParams {
  int? get cityId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get serviceType => throw _privateConstructorUsedError;
  String? get carDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitServiceParamsCopyWith<SubmitServiceParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitServiceParamsCopyWith<$Res> {
  factory $SubmitServiceParamsCopyWith(
          SubmitServiceParams value, $Res Function(SubmitServiceParams) then) =
      _$SubmitServiceParamsCopyWithImpl<$Res, SubmitServiceParams>;
  @useResult
  $Res call(
      {int? cityId,
      String? name,
      String? address,
      String? phone,
      String? serviceType,
      String? carDescription});
}

/// @nodoc
class _$SubmitServiceParamsCopyWithImpl<$Res, $Val extends SubmitServiceParams>
    implements $SubmitServiceParamsCopyWith<$Res> {
  _$SubmitServiceParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? serviceType = freezed,
    Object? carDescription = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      carDescription: freezed == carDescription
          ? _value.carDescription
          : carDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitServiceParamsImplCopyWith<$Res>
    implements $SubmitServiceParamsCopyWith<$Res> {
  factory _$$SubmitServiceParamsImplCopyWith(_$SubmitServiceParamsImpl value,
          $Res Function(_$SubmitServiceParamsImpl) then) =
      __$$SubmitServiceParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? cityId,
      String? name,
      String? address,
      String? phone,
      String? serviceType,
      String? carDescription});
}

/// @nodoc
class __$$SubmitServiceParamsImplCopyWithImpl<$Res>
    extends _$SubmitServiceParamsCopyWithImpl<$Res, _$SubmitServiceParamsImpl>
    implements _$$SubmitServiceParamsImplCopyWith<$Res> {
  __$$SubmitServiceParamsImplCopyWithImpl(_$SubmitServiceParamsImpl _value,
      $Res Function(_$SubmitServiceParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phone = freezed,
    Object? serviceType = freezed,
    Object? carDescription = freezed,
  }) {
    return _then(_$SubmitServiceParamsImpl(
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as String?,
      carDescription: freezed == carDescription
          ? _value.carDescription
          : carDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitServiceParamsImpl implements _SubmitServiceParams {
  const _$SubmitServiceParamsImpl(
      {this.cityId,
      this.name,
      this.address,
      this.phone,
      this.serviceType,
      this.carDescription});

  @override
  final int? cityId;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phone;
  @override
  final String? serviceType;
  @override
  final String? carDescription;

  @override
  String toString() {
    return 'SubmitServiceParams(cityId: $cityId, name: $name, address: $address, phone: $phone, serviceType: $serviceType, carDescription: $carDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitServiceParamsImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.carDescription, carDescription) ||
                other.carDescription == carDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cityId, name, address, phone, serviceType, carDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitServiceParamsImplCopyWith<_$SubmitServiceParamsImpl> get copyWith =>
      __$$SubmitServiceParamsImplCopyWithImpl<_$SubmitServiceParamsImpl>(
          this, _$identity);
}

abstract class _SubmitServiceParams implements SubmitServiceParams {
  const factory _SubmitServiceParams(
      {final int? cityId,
      final String? name,
      final String? address,
      final String? phone,
      final String? serviceType,
      final String? carDescription}) = _$SubmitServiceParamsImpl;

  @override
  int? get cityId;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get phone;
  @override
  String? get serviceType;
  @override
  String? get carDescription;
  @override
  @JsonKey(ignore: true)
  _$$SubmitServiceParamsImplCopyWith<_$SubmitServiceParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
