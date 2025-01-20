// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stitch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StitchModel _$StitchModelFromJson(Map<String, dynamic> json) {
  return _StitchModel.fromJson(json);
}

/// @nodoc
mixin _$StitchModel {
  Items get key => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get stitch => throw _privateConstructorUsedError;
  double get head => throw _privateConstructorUsedError;

  /// Serializes this StitchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StitchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StitchModelCopyWith<StitchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StitchModelCopyWith<$Res> {
  factory $StitchModelCopyWith(
          StitchModel value, $Res Function(StitchModel) then) =
      _$StitchModelCopyWithImpl<$Res, StitchModel>;
  @useResult
  $Res call({Items key, String name, double stitch, double head});
}

/// @nodoc
class _$StitchModelCopyWithImpl<$Res, $Val extends StitchModel>
    implements $StitchModelCopyWith<$Res> {
  _$StitchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StitchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? stitch = null,
    Object? head = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Items,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stitch: null == stitch
          ? _value.stitch
          : stitch // ignore: cast_nullable_to_non_nullable
              as double,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StitchModelImplCopyWith<$Res>
    implements $StitchModelCopyWith<$Res> {
  factory _$$StitchModelImplCopyWith(
          _$StitchModelImpl value, $Res Function(_$StitchModelImpl) then) =
      __$$StitchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Items key, String name, double stitch, double head});
}

/// @nodoc
class __$$StitchModelImplCopyWithImpl<$Res>
    extends _$StitchModelCopyWithImpl<$Res, _$StitchModelImpl>
    implements _$$StitchModelImplCopyWith<$Res> {
  __$$StitchModelImplCopyWithImpl(
      _$StitchModelImpl _value, $Res Function(_$StitchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StitchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? stitch = null,
    Object? head = null,
  }) {
    return _then(_$StitchModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Items,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stitch: null == stitch
          ? _value.stitch
          : stitch // ignore: cast_nullable_to_non_nullable
              as double,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StitchModelImpl implements _StitchModel {
  const _$StitchModelImpl(
      {required this.key,
      required this.name,
      required this.stitch,
      required this.head});

  factory _$StitchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StitchModelImplFromJson(json);

  @override
  final Items key;
  @override
  final String name;
  @override
  final double stitch;
  @override
  final double head;

  @override
  String toString() {
    return 'StitchModel(key: $key, name: $name, stitch: $stitch, head: $head)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StitchModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stitch, stitch) || other.stitch == stitch) &&
            (identical(other.head, head) || other.head == head));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, name, stitch, head);

  /// Create a copy of StitchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StitchModelImplCopyWith<_$StitchModelImpl> get copyWith =>
      __$$StitchModelImplCopyWithImpl<_$StitchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StitchModelImplToJson(
      this,
    );
  }
}

abstract class _StitchModel implements StitchModel {
  const factory _StitchModel(
      {required final Items key,
      required final String name,
      required final double stitch,
      required final double head}) = _$StitchModelImpl;

  factory _StitchModel.fromJson(Map<String, dynamic> json) =
      _$StitchModelImpl.fromJson;

  @override
  Items get key;
  @override
  String get name;
  @override
  double get stitch;
  @override
  double get head;

  /// Create a copy of StitchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StitchModelImplCopyWith<_$StitchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
