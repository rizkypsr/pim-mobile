// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShowroomModel _$ShowroomModelFromJson(Map<String, dynamic> json) {
  return _ShowroomModel.fromJson(json);
}

/// @nodoc
mixin _$ShowroomModel {
  int get id => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get province => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'cars')
  List<CarModel> get cars => throw _privateConstructorUsedError;
  @JsonKey(name: 'showroom_name')
  String get showroomName => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_number')
  String get whatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_url')
  String get whatsappUrl => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowroomModelCopyWith<ShowroomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowroomModelCopyWith<$Res> {
  factory $ShowroomModelCopyWith(
          ShowroomModel value, $Res Function(ShowroomModel) then) =
      _$ShowroomModelCopyWithImpl<$Res, ShowroomModel>;
  @useResult
  $Res call(
      {int id,
      String city,
      String province,
      List<String> images,
      @JsonKey(name: 'cars') List<CarModel> cars,
      @JsonKey(name: 'showroom_name') String showroomName,
      @JsonKey(name: 'whatsapp_number') String whatsappNumber,
      @JsonKey(name: 'whatsapp_url') String whatsappUrl,
      String? video});
}

/// @nodoc
class _$ShowroomModelCopyWithImpl<$Res, $Val extends ShowroomModel>
    implements $ShowroomModelCopyWith<$Res> {
  _$ShowroomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? province = null,
    Object? images = null,
    Object? cars = null,
    Object? showroomName = null,
    Object? whatsappNumber = null,
    Object? whatsappUrl = null,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cars: null == cars
          ? _value.cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
      showroomName: null == showroomName
          ? _value.showroomName
          : showroomName // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappNumber: null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappUrl: null == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowroomModelImplCopyWith<$Res>
    implements $ShowroomModelCopyWith<$Res> {
  factory _$$ShowroomModelImplCopyWith(
          _$ShowroomModelImpl value, $Res Function(_$ShowroomModelImpl) then) =
      __$$ShowroomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String city,
      String province,
      List<String> images,
      @JsonKey(name: 'cars') List<CarModel> cars,
      @JsonKey(name: 'showroom_name') String showroomName,
      @JsonKey(name: 'whatsapp_number') String whatsappNumber,
      @JsonKey(name: 'whatsapp_url') String whatsappUrl,
      String? video});
}

/// @nodoc
class __$$ShowroomModelImplCopyWithImpl<$Res>
    extends _$ShowroomModelCopyWithImpl<$Res, _$ShowroomModelImpl>
    implements _$$ShowroomModelImplCopyWith<$Res> {
  __$$ShowroomModelImplCopyWithImpl(
      _$ShowroomModelImpl _value, $Res Function(_$ShowroomModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? province = null,
    Object? images = null,
    Object? cars = null,
    Object? showroomName = null,
    Object? whatsappNumber = null,
    Object? whatsappUrl = null,
    Object? video = freezed,
  }) {
    return _then(_$ShowroomModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cars: null == cars
          ? _value._cars
          : cars // ignore: cast_nullable_to_non_nullable
              as List<CarModel>,
      showroomName: null == showroomName
          ? _value.showroomName
          : showroomName // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappNumber: null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
      whatsappUrl: null == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowroomModelImpl extends _ShowroomModel {
  const _$ShowroomModelImpl(
      {required this.id,
      required this.city,
      required this.province,
      required final List<String> images,
      @JsonKey(name: 'cars') required final List<CarModel> cars,
      @JsonKey(name: 'showroom_name') required this.showroomName,
      @JsonKey(name: 'whatsapp_number') required this.whatsappNumber,
      @JsonKey(name: 'whatsapp_url') required this.whatsappUrl,
      this.video})
      : _images = images,
        _cars = cars,
        super._();

  factory _$ShowroomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowroomModelImplFromJson(json);

  @override
  final int id;
  @override
  final String city;
  @override
  final String province;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<CarModel> _cars;
  @override
  @JsonKey(name: 'cars')
  List<CarModel> get cars {
    if (_cars is EqualUnmodifiableListView) return _cars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cars);
  }

  @override
  @JsonKey(name: 'showroom_name')
  final String showroomName;
  @override
  @JsonKey(name: 'whatsapp_number')
  final String whatsappNumber;
  @override
  @JsonKey(name: 'whatsapp_url')
  final String whatsappUrl;
  @override
  final String? video;

  @override
  String toString() {
    return 'ShowroomModel(id: $id, city: $city, province: $province, images: $images, cars: $cars, showroomName: $showroomName, whatsappNumber: $whatsappNumber, whatsappUrl: $whatsappUrl, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowroomModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.province, province) ||
                other.province == province) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._cars, _cars) &&
            (identical(other.showroomName, showroomName) ||
                other.showroomName == showroomName) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.whatsappUrl, whatsappUrl) ||
                other.whatsappUrl == whatsappUrl) &&
            (identical(other.video, video) || other.video == video));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      city,
      province,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_cars),
      showroomName,
      whatsappNumber,
      whatsappUrl,
      video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowroomModelImplCopyWith<_$ShowroomModelImpl> get copyWith =>
      __$$ShowroomModelImplCopyWithImpl<_$ShowroomModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowroomModelImplToJson(
      this,
    );
  }
}

abstract class _ShowroomModel extends ShowroomModel {
  const factory _ShowroomModel(
      {required final int id,
      required final String city,
      required final String province,
      required final List<String> images,
      @JsonKey(name: 'cars') required final List<CarModel> cars,
      @JsonKey(name: 'showroom_name') required final String showroomName,
      @JsonKey(name: 'whatsapp_number') required final String whatsappNumber,
      @JsonKey(name: 'whatsapp_url') required final String whatsappUrl,
      final String? video}) = _$ShowroomModelImpl;
  const _ShowroomModel._() : super._();

  factory _ShowroomModel.fromJson(Map<String, dynamic> json) =
      _$ShowroomModelImpl.fromJson;

  @override
  int get id;
  @override
  String get city;
  @override
  String get province;
  @override
  List<String> get images;
  @override
  @JsonKey(name: 'cars')
  List<CarModel> get cars;
  @override
  @JsonKey(name: 'showroom_name')
  String get showroomName;
  @override
  @JsonKey(name: 'whatsapp_number')
  String get whatsappNumber;
  @override
  @JsonKey(name: 'whatsapp_url')
  String get whatsappUrl;
  @override
  String? get video;
  @override
  @JsonKey(ignore: true)
  _$$ShowroomModelImplCopyWith<_$ShowroomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
