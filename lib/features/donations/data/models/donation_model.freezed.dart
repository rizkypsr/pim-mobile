// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonationModel _$DonationModelFromJson(Map<String, dynamic> json) {
  return _DonationModel.fromJson(json);
}

/// @nodoc
mixin _$DonationModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "subtitle")
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  String? get video => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_number')
  String? get whatsappNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'whatsapp_url')
  String? get whatsappUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonationModelCopyWith<DonationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationModelCopyWith<$Res> {
  factory $DonationModelCopyWith(
          DonationModel value, $Res Function(DonationModel) then) =
      _$DonationModelCopyWithImpl<$Res, DonationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "subtitle") String subtitle,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "images") List<String>? images,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'whatsapp_url') String? whatsappUrl,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class _$DonationModelCopyWithImpl<$Res, $Val extends DonationModel>
    implements $DonationModelCopyWith<$Res> {
  _$DonationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? description = null,
    Object? video = freezed,
    Object? images = freezed,
    Object? whatsappNumber = freezed,
    Object? whatsappUrl = freezed,
    Object? createdAt = null,
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
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationModelImplCopyWith<$Res>
    implements $DonationModelCopyWith<$Res> {
  factory _$$DonationModelImplCopyWith(
          _$DonationModelImpl value, $Res Function(_$DonationModelImpl) then) =
      __$$DonationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "subtitle") String subtitle,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "video") String? video,
      @JsonKey(name: "images") List<String>? images,
      @JsonKey(name: 'whatsapp_number') String? whatsappNumber,
      @JsonKey(name: 'whatsapp_url') String? whatsappUrl,
      @JsonKey(name: "created_at") String createdAt});
}

/// @nodoc
class __$$DonationModelImplCopyWithImpl<$Res>
    extends _$DonationModelCopyWithImpl<$Res, _$DonationModelImpl>
    implements _$$DonationModelImplCopyWith<$Res> {
  __$$DonationModelImplCopyWithImpl(
      _$DonationModelImpl _value, $Res Function(_$DonationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? description = null,
    Object? video = freezed,
    Object? images = freezed,
    Object? whatsappNumber = freezed,
    Object? whatsappUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$DonationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      whatsappNumber: freezed == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsappUrl: freezed == whatsappUrl
          ? _value.whatsappUrl
          : whatsappUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationModelImpl extends _DonationModel {
  const _$DonationModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "subtitle") required this.subtitle,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "video") required this.video,
      @JsonKey(name: "images") required final List<String>? images,
      @JsonKey(name: 'whatsapp_number') this.whatsappNumber,
      @JsonKey(name: 'whatsapp_url') this.whatsappUrl,
      @JsonKey(name: "created_at") required this.createdAt})
      : _images = images,
        super._();

  factory _$DonationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "subtitle")
  final String subtitle;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "video")
  final String? video;
  final List<String>? _images;
  @override
  @JsonKey(name: "images")
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'whatsapp_number')
  final String? whatsappNumber;
  @override
  @JsonKey(name: 'whatsapp_url')
  final String? whatsappUrl;
  @override
  @JsonKey(name: "created_at")
  final String createdAt;

  @override
  String toString() {
    return 'DonationModel(id: $id, title: $title, subtitle: $subtitle, description: $description, video: $video, images: $images, whatsappNumber: $whatsappNumber, whatsappUrl: $whatsappUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.video, video) || other.video == video) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber) &&
            (identical(other.whatsappUrl, whatsappUrl) ||
                other.whatsappUrl == whatsappUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      subtitle,
      description,
      video,
      const DeepCollectionEquality().hash(_images),
      whatsappNumber,
      whatsappUrl,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationModelImplCopyWith<_$DonationModelImpl> get copyWith =>
      __$$DonationModelImplCopyWithImpl<_$DonationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationModelImplToJson(
      this,
    );
  }
}

abstract class _DonationModel extends DonationModel {
  const factory _DonationModel(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "subtitle") required final String subtitle,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "video") required final String? video,
          @JsonKey(name: "images") required final List<String>? images,
          @JsonKey(name: 'whatsapp_number') final String? whatsappNumber,
          @JsonKey(name: 'whatsapp_url') final String? whatsappUrl,
          @JsonKey(name: "created_at") required final String createdAt}) =
      _$DonationModelImpl;
  const _DonationModel._() : super._();

  factory _DonationModel.fromJson(Map<String, dynamic> json) =
      _$DonationModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "subtitle")
  String get subtitle;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "video")
  String? get video;
  @override
  @JsonKey(name: "images")
  List<String>? get images;
  @override
  @JsonKey(name: 'whatsapp_number')
  String? get whatsappNumber;
  @override
  @JsonKey(name: 'whatsapp_url')
  String? get whatsappUrl;
  @override
  @JsonKey(name: "created_at")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$DonationModelImplCopyWith<_$DonationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
