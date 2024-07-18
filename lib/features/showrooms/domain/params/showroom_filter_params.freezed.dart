// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showroom_filter_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowroomFilterParams {
  String? get showroomName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowroomFilterParamsCopyWith<ShowroomFilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowroomFilterParamsCopyWith<$Res> {
  factory $ShowroomFilterParamsCopyWith(ShowroomFilterParams value,
          $Res Function(ShowroomFilterParams) then) =
      _$ShowroomFilterParamsCopyWithImpl<$Res, ShowroomFilterParams>;
  @useResult
  $Res call({String? showroomName});
}

/// @nodoc
class _$ShowroomFilterParamsCopyWithImpl<$Res,
        $Val extends ShowroomFilterParams>
    implements $ShowroomFilterParamsCopyWith<$Res> {
  _$ShowroomFilterParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showroomName = freezed,
  }) {
    return _then(_value.copyWith(
      showroomName: freezed == showroomName
          ? _value.showroomName
          : showroomName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowroomFilterParamsImplCopyWith<$Res>
    implements $ShowroomFilterParamsCopyWith<$Res> {
  factory _$$ShowroomFilterParamsImplCopyWith(_$ShowroomFilterParamsImpl value,
          $Res Function(_$ShowroomFilterParamsImpl) then) =
      __$$ShowroomFilterParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? showroomName});
}

/// @nodoc
class __$$ShowroomFilterParamsImplCopyWithImpl<$Res>
    extends _$ShowroomFilterParamsCopyWithImpl<$Res, _$ShowroomFilterParamsImpl>
    implements _$$ShowroomFilterParamsImplCopyWith<$Res> {
  __$$ShowroomFilterParamsImplCopyWithImpl(_$ShowroomFilterParamsImpl _value,
      $Res Function(_$ShowroomFilterParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showroomName = freezed,
  }) {
    return _then(_$ShowroomFilterParamsImpl(
      showroomName: freezed == showroomName
          ? _value.showroomName
          : showroomName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShowroomFilterParamsImpl implements _ShowroomFilterParams {
  const _$ShowroomFilterParamsImpl({this.showroomName});

  @override
  final String? showroomName;

  @override
  String toString() {
    return 'ShowroomFilterParams(showroomName: $showroomName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowroomFilterParamsImpl &&
            (identical(other.showroomName, showroomName) ||
                other.showroomName == showroomName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showroomName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowroomFilterParamsImplCopyWith<_$ShowroomFilterParamsImpl>
      get copyWith =>
          __$$ShowroomFilterParamsImplCopyWithImpl<_$ShowroomFilterParamsImpl>(
              this, _$identity);
}

abstract class _ShowroomFilterParams implements ShowroomFilterParams {
  const factory _ShowroomFilterParams({final String? showroomName}) =
      _$ShowroomFilterParamsImpl;

  @override
  String? get showroomName;
  @override
  @JsonKey(ignore: true)
  _$$ShowroomFilterParamsImplCopyWith<_$ShowroomFilterParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
