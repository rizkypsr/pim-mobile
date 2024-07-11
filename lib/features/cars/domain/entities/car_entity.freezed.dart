// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarEntity {
  int get id => throw _privateConstructorUsedError;
  String get carName => throw _privateConstructorUsedError;
  String get brandName => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get whatsappNumber => throw _privateConstructorUsedError;
  String? get whatsappUrl => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  ShowroomEntity? get showroom => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CarEntityCopyWith<CarEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarEntityCopyWith<$Res> {
  factory $CarEntityCopyWith(CarEntity value, $Res Function(CarEntity) then) =
      _$CarEntityCopyWithImpl<$Res, CarEntity>;
  @useResult
  $Res call(
      {int id,
      String carName,
      String brandName,
      double price,
      List<String> images,
      String? description,
      String? video,
      String? year,
      String? whatsappNumber,
      String? whatsappUrl,
      String? city,
      String? province,
      ShowroomEntity? showroom});

  $ShowroomEntityCopyWith<$Res>? get showroom;
}

/// @nodoc
class _$CarEntityCopyWithImpl<$Res, $Val extends CarEntity>
    implements $CarEntityCopyWith<$Res> {
  _$CarEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carName = null,
    Object? brandName = null,
    Object? price = null,
    Object? images = null,
    Object? description = freezed,
    Object? video = freezed,
    Object? year = freezed,
    Object? whatsappNumber = freezed,
    Object? whatsappUrl = freezed,
    Object? city = freezed,
    Object? province = freezed,
    Object? showroom = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      showroom: freezed == showroom
          ? _value.showroom
          : showroom // ignore: cast_nullable_to_non_nullable
              as ShowroomEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowroomEntityCopyWith<$Res>? get showroom {
    if (_value.showroom == null) {
      return null;
    }

    return $ShowroomEntityCopyWith<$Res>(_value.showroom!, (value) {
      return _then(_value.copyWith(showroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarEntityImplCopyWith<$Res>
    implements $CarEntityCopyWith<$Res> {
  factory _$$CarEntityImplCopyWith(
          _$CarEntityImpl value, $Res Function(_$CarEntityImpl) then) =
      __$$CarEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String carName,
      String brandName,
      double price,
      List<String> images,
      String? description,
      String? video,
      String? year,
      String? whatsappNumber,
      String? whatsappUrl,
      String? city,
      String? province,
      ShowroomEntity? showroom});

  @override
  $ShowroomEntityCopyWith<$Res>? get showroom;
}

/// @nodoc
class __$$CarEntityImplCopyWithImpl<$Res>
    extends _$CarEntityCopyWithImpl<$Res, _$CarEntityImpl>
    implements _$$CarEntityImplCopyWith<$Res> {
  __$$CarEntityImplCopyWithImpl(
      _$CarEntityImpl _value, $Res Function(_$CarEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? carName = null,
    Object? brandName = null,
    Object? price = null,
    Object? images = null,
    Object? description = freezed,
    Object? video = freezed,
    Object? year = freezed,
    Object? whatsappNumber = freezed,
    Object? whatsappUrl = freezed,
    Object? city = freezed,
    Object? province = freezed,
    Object? showroom = freezed,
  }) {
    return _then(_$CarEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      province: freezed == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String?,
      showroom: freezed == showroom
          ? _value.showroom
          : showroom // ignore: cast_nullable_to_non_nullable
              as ShowroomEntity?,
    ));
  }
}

/// @nodoc

class _$CarEntityImpl implements _CarEntity {
  const _$CarEntityImpl(
      {required this.id,
      required this.carName,
      required this.brandName,
      required this.price,
      required final List<String> images,
      this.description,
      this.video,
      this.year,
      this.whatsappNumber,
      this.whatsappUrl,
      this.city,
      this.province,
      this.showroom})
      : _images = images;

  @override
  final int id;
  @override
  final String carName;
  @override
  final String brandName;
  @override
  final double price;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? description;
  @override
  final String? video;
  @override
  final String? year;
  @override
  final String? whatsappNumber;
  @override
  final String? whatsappUrl;
  @override
  final String? city;
  @override
  final String? province;
  @override
  final ShowroomEntity? showroom;

  @override
  String toString() {
    return 'CarEntity(id: $id, carName: $carName, brandName: $brandName, price: $price, images: $images, description: $description, video: $video, year: $year, whatsappNumber: $whatsappNumber, whatsappUrl: $whatsappUrl, city: $city, province: $province, showroom: $showroom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.whatsappUrl, whatsappUrl) ||
                other.whatsappUrl == whatsappUrl) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.showroom, showroom) ||
                other.showroom == showroom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      carName,
      brandName,
      price,
      const DeepCollectionEquality().hash(_images),
      description,
      video,
      year,
      whatsappNumber,
      whatsappUrl,
      city,
      province,
      showroom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarEntityImplCopyWith<_$CarEntityImpl> get copyWith =>
      __$$CarEntityImplCopyWithImpl<_$CarEntityImpl>(this, _$identity);
}

abstract class _CarEntity implements CarEntity {
  const factory _CarEntity(
      {required final int id,
      required final String carName,
      required final String brandName,
      required final double price,
      required final List<String> images,
      final String? description,
      final String? video,
      final String? year,
      final String? whatsappNumber,
      final String? whatsappUrl,
      final String? city,
      final String? province,
      final ShowroomEntity? showroom}) = _$CarEntityImpl;

  @override
  int get id;
  @override
  String get carName;
  @override
  String get brandName;
  @override
  double get price;
  @override
  List<String> get images;
  @override
  String? get description;
  @override
  String? get video;
  @override
  String? get year;
  @override
  String? get whatsappNumber;
  @override
  String? get whatsappUrl;
  @override
  String? get city;
  @override
  String? get province;
  @override
  ShowroomEntity? get showroom;
  @override
  @JsonKey(ignore: true)
  _$$CarEntityImplCopyWith<_$CarEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
