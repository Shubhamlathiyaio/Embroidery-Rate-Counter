// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stitche_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StitcheModel _$StitcheModelFromJson(Map<String, dynamic> json) {
  return _StitcheModel.fromJson(json);
}

/// @nodoc
mixin _$StitcheModel {
  String get name => throw _privateConstructorUsedError;
  double get stitch => throw _privateConstructorUsedError;
  double get head => throw _privateConstructorUsedError;

  /// Serializes this StitcheModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StitcheModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StitcheModelCopyWith<StitcheModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StitcheModelCopyWith<$Res> {
  factory $StitcheModelCopyWith(
          StitcheModel value, $Res Function(StitcheModel) then) =
      _$StitcheModelCopyWithImpl<$Res, StitcheModel>;
  @useResult
  $Res call({String name, double stitch, double head});
}

/// @nodoc
class _$StitcheModelCopyWithImpl<$Res, $Val extends StitcheModel>
    implements $StitcheModelCopyWith<$Res> {
  _$StitcheModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StitcheModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stitch = null,
    Object? head = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$StitcheModelImplCopyWith<$Res>
    implements $StitcheModelCopyWith<$Res> {
  factory _$$StitcheModelImplCopyWith(
          _$StitcheModelImpl value, $Res Function(_$StitcheModelImpl) then) =
      __$$StitcheModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double stitch, double head});
}

/// @nodoc
class __$$StitcheModelImplCopyWithImpl<$Res>
    extends _$StitcheModelCopyWithImpl<$Res, _$StitcheModelImpl>
    implements _$$StitcheModelImplCopyWith<$Res> {
  __$$StitcheModelImplCopyWithImpl(
      _$StitcheModelImpl _value, $Res Function(_$StitcheModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StitcheModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stitch = null,
    Object? head = null,
  }) {
    return _then(_$StitcheModelImpl(
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
class _$StitcheModelImpl implements _StitcheModel {
  const _$StitcheModelImpl(
      {required this.name, required this.stitch, required this.head});

  factory _$StitcheModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StitcheModelImplFromJson(json);

  @override
  final String name;
  @override
  final double stitch;
  @override
  final double head;

  @override
  String toString() {
    return 'StitcheModel(name: $name, stitch: $stitch, head: $head)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StitcheModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stitch, stitch) || other.stitch == stitch) &&
            (identical(other.head, head) || other.head == head));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, stitch, head);

  /// Create a copy of StitcheModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StitcheModelImplCopyWith<_$StitcheModelImpl> get copyWith =>
      __$$StitcheModelImplCopyWithImpl<_$StitcheModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StitcheModelImplToJson(
      this,
    );
  }
}

abstract class _StitcheModel implements StitcheModel {
  const factory _StitcheModel(
      {required final String name,
      required final double stitch,
      required final double head}) = _$StitcheModelImpl;

  factory _StitcheModel.fromJson(Map<String, dynamic> json) =
      _$StitcheModelImpl.fromJson;

  @override
  String get name;
  @override
  double get stitch;
  @override
  double get head;

  /// Create a copy of StitcheModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StitcheModelImplCopyWith<_$StitcheModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
