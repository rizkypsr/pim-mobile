// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarModel _$CarModelFromJson(Map<String, dynamic> json) {
  return _CarModel.fromJson(json);
}

/// @nodoc
mixin _$CarModel {
  int get id => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get province => throw _privateConstructorUsedError;
  ShowroomModel? get showroom => throw _privateConstructorUsedError;
  @JsonKey(name: 'car_name')
  String get carName => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand_name')
  String get brandName => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_number')
  String? get whatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_url')
  String? get whatsappUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarModelCopyWith<CarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelCopyWith<$Res> {
  factory $CarModelCopyWith(CarModel value, $Res Function(CarModel) then) =
      _$CarModelCopyWithImpl<$Res, CarModel>;
  @useResult
  $Res call(
      {int id,
      double price,
      List<String> images,
      String? description,
      String? video,
      String? year,
      String? city,
      String? province,
      ShowroomModel? showroom,
      @JsonKey(name: 'car_name') String carName,
      @JsonKey(name: 'brand_name') String brandName,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'whatsapp_url') String? whatsappUrl});

  $ShowroomModelCopyWith<$Res>? get showroom;
}

/// @nodoc
class _$CarModelCopyWithImpl<$Res, $Val extends CarModel>
    implements $CarModelCopyWith<$Res> {
  _$CarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? images = null,
    Object? description = freezed,
    Object? video = freezed,
    Object? year = freezed,
    Object? city = freezed,
    Object? province = freezed,
    Object? showroom = freezed,
    Object? carName = null,
    Object? brandName = null,
    Object? whatsappNumber = freezed,
    Object? whatsappUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as ShowroomModel?,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowroomModelCopyWith<$Res>? get showroom {
    if (_value.showroom == null) {
      return null;
    }

    return $ShowroomModelCopyWith<$Res>(_value.showroom!, (value) {
      return _then(_value.copyWith(showroom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarModelImplCopyWith<$Res>
    implements $CarModelCopyWith<$Res> {
  factory _$$CarModelImplCopyWith(
          _$CarModelImpl value, $Res Function(_$CarModelImpl) then) =
      __$$CarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double price,
      List<String> images,
      String? description,
      String? video,
      String? year,
      String? city,
      String? province,
      ShowroomModel? showroom,
      @JsonKey(name: 'car_name') String carName,
      @JsonKey(name: 'brand_name') String brandName,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'whatsapp_url') String? whatsappUrl});

  @override
  $ShowroomModelCopyWith<$Res>? get showroom;
}

/// @nodoc
class __$$CarModelImplCopyWithImpl<$Res>
    extends _$CarModelCopyWithImpl<$Res, _$CarModelImpl>
    implements _$$CarModelImplCopyWith<$Res> {
  __$$CarModelImplCopyWithImpl(
      _$CarModelImpl _value, $Res Function(_$CarModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? images = null,
    Object? description = freezed,
    Object? video = freezed,
    Object? year = freezed,
    Object? city = freezed,
    Object? province = freezed,
    Object? showroom = freezed,
    Object? carName = null,
    Object? brandName = null,
    Object? whatsappNumber = freezed,
    Object? whatsappUrl = freezed,
  }) {
    return _then(_$CarModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as ShowroomModel?,
      carName: null == carName
          ? _value.carName
          : carName // ignore: cast_nullable_to_non_nullable
              as String,
      brandName: null == brandName
          ? _value.brandName
          : brandName // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarModelImpl extends _CarModel {
  const _$CarModelImpl(
      {required this.id,
      required this.price,
      required final List<String> images,
      this.description,
      this.video,
      this.year,
      this.city,
      this.province,
      this.showroom,
      @JsonKey(name: 'car_name') required this.carName,
      @JsonKey(name: 'brand_name') required this.brandName,
      @JsonKey(name: 'whatsapp_number') this.whatsappNumber,
      @JsonKey(name: 'whatsapp_url') this.whatsappUrl})
      : _images = images,
        super._();

  factory _$CarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarModelImplFromJson(json);

  @override
  final int id;
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
  final String? city;
  @override
  final String? province;
  @override
  final ShowroomModel? showroom;
  @override
  @JsonKey(name: 'car_name')
  final String carName;
  @override
  @JsonKey(name: 'brand_name')
  final String brandName;
  @override
  @JsonKey(name: 'whatsapp_number')
  final String? whatsappNumber;
  @override
  @JsonKey(name: 'whatsapp_url')
  final String? whatsappUrl;

  @override
  String toString() {
    return 'CarModel(id: $id, price: $price, images: $images, description: $description, video: $video, year: $year, city: $city, province: $province, showroom: $showroom, carName: $carName, brandName: $brandName, whatsappNumber: $whatsappNumber, whatsappUrl: $whatsappUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.showroom, showroom) ||
                other.showroom == showroom) &&
            (identical(other.carName, carName) || other.carName == carName) &&
            (identical(other.brandName, brandName) ||
                other.brandName == brandName) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.whatsappUrl, whatsappUrl) ||
                other.whatsappUrl == whatsappUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      price,
      const DeepCollectionEquality().hash(_images),
      description,
      video,
      year,
      city,
      province,
      showroom,
      carName,
      brandName,
      whatsappNumber,
      whatsappUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      __$$CarModelImplCopyWithImpl<_$CarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarModelImplToJson(
      this,
    );
  }
}

abstract class _CarModel extends CarModel {
  const factory _CarModel(
          {required final int id,
          required final double price,
          required final List<String> images,
          final String? description,
          final String? video,
          final String? year,
          final String? city,
          final String? province,
          final ShowroomModel? showroom,
          @JsonKey(name: 'car_name') required final String carName,
          @JsonKey(name: 'brand_name') required final String brandName,
          @JsonKey(name: 'whatsapp_number') final String? whatsappNumber,
          @JsonKey(name: 'whatsapp_url') final String? whatsappUrl}) =
      _$CarModelImpl;
  const _CarModel._() : super._();

  factory _CarModel.fromJson(Map<String, dynamic> json) =
      _$CarModelImpl.fromJson;

  @override
  int get id;
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
  String? get city;
  @override
  String? get province;
  @override
  ShowroomModel? get showroom;
  @override
  @JsonKey(name: 'car_name')
  String get carName;
  @override
  @JsonKey(name: 'brand_name')
  String get brandName;
  @override
  @JsonKey(name: 'whatsapp_number')
  String? get whatsappNumber;
  @override
  @JsonKey(name: 'whatsapp_url')
  String? get whatsappUrl;
  @override
  @JsonKey(ignore: true)
  _$$CarModelImplCopyWith<_$CarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
