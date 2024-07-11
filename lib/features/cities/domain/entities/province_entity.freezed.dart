// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'province_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProvinceEntity {
  int get id => throw _privateConstructorUsedError;
  String get provinceName => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProvinceEntityCopyWith<ProvinceEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProvinceEntityCopyWith<$Res> {
  factory $ProvinceEntityCopyWith(
          ProvinceEntity value, $Res Function(ProvinceEntity) then) =
      _$ProvinceEntityCopyWithImpl<$Res, ProvinceEntity>;
  @useResult
  $Res call({int id, String provinceName, String createdAt, String updatedAt});
}

/// @nodoc
class _$ProvinceEntityCopyWithImpl<$Res, $Val extends ProvinceEntity>
    implements $ProvinceEntityCopyWith<$Res> {
  _$ProvinceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provinceName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProvinceEntityImplCopyWith<$Res>
    implements $ProvinceEntityCopyWith<$Res> {
  factory _$$ProvinceEntityImplCopyWith(_$ProvinceEntityImpl value,
          $Res Function(_$ProvinceEntityImpl) then) =
      __$$ProvinceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String provinceName, String createdAt, String updatedAt});
}

/// @nodoc
class __$$ProvinceEntityImplCopyWithImpl<$Res>
    extends _$ProvinceEntityCopyWithImpl<$Res, _$ProvinceEntityImpl>
    implements _$$ProvinceEntityImplCopyWith<$Res> {
  __$$ProvinceEntityImplCopyWithImpl(
      _$ProvinceEntityImpl _value, $Res Function(_$ProvinceEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? provinceName = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProvinceEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      provinceName: null == provinceName
          ? _value.provinceName
          : provinceName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProvinceEntityImpl implements _ProvinceEntity {
  const _$ProvinceEntityImpl(
      {required this.id,
      required this.provinceName,
      required this.createdAt,
      required this.updatedAt});

  @override
  final int id;
  @override
  final String provinceName;
  @override
  final String createdAt;
  @override
  final String updatedAt;

  @override
  String toString() {
    return 'ProvinceEntity(id: $id, provinceName: $provinceName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProvinceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.provinceName, provinceName) ||
                other.provinceName == provinceName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, provinceName, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProvinceEntityImplCopyWith<_$ProvinceEntityImpl> get copyWith =>
      __$$ProvinceEntityImplCopyWithImpl<_$ProvinceEntityImpl>(
          this, _$identity);
}

abstract class _ProvinceEntity implements ProvinceEntity {
  const factory _ProvinceEntity(
      {required final int id,
      required final String provinceName,
      required final String createdAt,
      required final String updatedAt}) = _$ProvinceEntityImpl;

  @override
  int get id;
  @override
  String get provinceName;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProvinceEntityImplCopyWith<_$ProvinceEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
