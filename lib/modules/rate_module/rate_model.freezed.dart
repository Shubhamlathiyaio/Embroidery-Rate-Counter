// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RateModel _$RateModelFromJson(Map<String, dynamic> json) {
  return _RateModel.fromJson(json);
}

/// @nodoc
mixin _$RateModel {
  String get designName => throw _privateConstructorUsedError;
  String get rawStitchRate => throw _privateConstructorUsedError;
  double get stitchRate => throw _privateConstructorUsedError;
  List<StitcheModel> get stitches => throw _privateConstructorUsedError;
  String get rawAddOnPrice => throw _privateConstructorUsedError;
  double get addOnPrice => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this RateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RateModelCopyWith<RateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateModelCopyWith<$Res> {
  factory $RateModelCopyWith(RateModel value, $Res Function(RateModel) then) =
      _$RateModelCopyWithImpl<$Res, RateModel>;
  @useResult
  $Res call(
      {String designName,
      String rawStitchRate,
      double stitchRate,
      List<StitcheModel> stitches,
      String rawAddOnPrice,
      double addOnPrice,
      String description});
}

/// @nodoc
class _$RateModelCopyWithImpl<$Res, $Val extends RateModel>
    implements $RateModelCopyWith<$Res> {
  _$RateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designName = null,
    Object? rawStitchRate = null,
    Object? stitchRate = null,
    Object? stitches = null,
    Object? rawAddOnPrice = null,
    Object? addOnPrice = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      designName: null == designName
          ? _value.designName
          : designName // ignore: cast_nullable_to_non_nullable
              as String,
      rawStitchRate: null == rawStitchRate
          ? _value.rawStitchRate
          : rawStitchRate // ignore: cast_nullable_to_non_nullable
              as String,
      stitchRate: null == stitchRate
          ? _value.stitchRate
          : stitchRate // ignore: cast_nullable_to_non_nullable
              as double,
      stitches: null == stitches
          ? _value.stitches
          : stitches // ignore: cast_nullable_to_non_nullable
              as List<StitcheModel>,
      rawAddOnPrice: null == rawAddOnPrice
          ? _value.rawAddOnPrice
          : rawAddOnPrice // ignore: cast_nullable_to_non_nullable
              as String,
      addOnPrice: null == addOnPrice
          ? _value.addOnPrice
          : addOnPrice // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateModelImplCopyWith<$Res>
    implements $RateModelCopyWith<$Res> {
  factory _$$RateModelImplCopyWith(
          _$RateModelImpl value, $Res Function(_$RateModelImpl) then) =
      __$$RateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String designName,
      String rawStitchRate,
      double stitchRate,
      List<StitcheModel> stitches,
      String rawAddOnPrice,
      double addOnPrice,
      String description});
}

/// @nodoc
class __$$RateModelImplCopyWithImpl<$Res>
    extends _$RateModelCopyWithImpl<$Res, _$RateModelImpl>
    implements _$$RateModelImplCopyWith<$Res> {
  __$$RateModelImplCopyWithImpl(
      _$RateModelImpl _value, $Res Function(_$RateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designName = null,
    Object? rawStitchRate = null,
    Object? stitchRate = null,
    Object? stitches = null,
    Object? rawAddOnPrice = null,
    Object? addOnPrice = null,
    Object? description = null,
  }) {
    return _then(_$RateModelImpl(
      designName: null == designName
          ? _value.designName
          : designName // ignore: cast_nullable_to_non_nullable
              as String,
      rawStitchRate: null == rawStitchRate
          ? _value.rawStitchRate
          : rawStitchRate // ignore: cast_nullable_to_non_nullable
              as String,
      stitchRate: null == stitchRate
          ? _value.stitchRate
          : stitchRate // ignore: cast_nullable_to_non_nullable
              as double,
      stitches: null == stitches
          ? _value._stitches
          : stitches // ignore: cast_nullable_to_non_nullable
              as List<StitcheModel>,
      rawAddOnPrice: null == rawAddOnPrice
          ? _value.rawAddOnPrice
          : rawAddOnPrice // ignore: cast_nullable_to_non_nullable
              as String,
      addOnPrice: null == addOnPrice
          ? _value.addOnPrice
          : addOnPrice // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateModelImpl implements _RateModel {
  const _$RateModelImpl(
      {required this.designName,
      required this.rawStitchRate,
      required this.stitchRate,
      required final List<StitcheModel> stitches,
      required this.rawAddOnPrice,
      required this.addOnPrice,
      required this.description})
      : _stitches = stitches;

  factory _$RateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateModelImplFromJson(json);

  @override
  final String designName;
  @override
  final String rawStitchRate;
  @override
  final double stitchRate;
  final List<StitcheModel> _stitches;
  @override
  List<StitcheModel> get stitches {
    if (_stitches is EqualUnmodifiableListView) return _stitches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stitches);
  }

  @override
  final String rawAddOnPrice;
  @override
  final double addOnPrice;
  @override
  final String description;

  @override
  String toString() {
    return 'RateModel(designName: $designName, rawStitchRate: $rawStitchRate, stitchRate: $stitchRate, stitches: $stitches, rawAddOnPrice: $rawAddOnPrice, addOnPrice: $addOnPrice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateModelImpl &&
            (identical(other.designName, designName) ||
                other.designName == designName) &&
            (identical(other.rawStitchRate, rawStitchRate) ||
                other.rawStitchRate == rawStitchRate) &&
            (identical(other.stitchRate, stitchRate) ||
                other.stitchRate == stitchRate) &&
            const DeepCollectionEquality().equals(other._stitches, _stitches) &&
            (identical(other.rawAddOnPrice, rawAddOnPrice) ||
                other.rawAddOnPrice == rawAddOnPrice) &&
            (identical(other.addOnPrice, addOnPrice) ||
                other.addOnPrice == addOnPrice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      designName,
      rawStitchRate,
      stitchRate,
      const DeepCollectionEquality().hash(_stitches),
      rawAddOnPrice,
      addOnPrice,
      description);

  /// Create a copy of RateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateModelImplCopyWith<_$RateModelImpl> get copyWith =>
      __$$RateModelImplCopyWithImpl<_$RateModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateModelImplToJson(
      this,
    );
  }
}

abstract class _RateModel implements RateModel {
  const factory _RateModel(
      {required final String designName,
      required final String rawStitchRate,
      required final double stitchRate,
      required final List<StitcheModel> stitches,
      required final String rawAddOnPrice,
      required final double addOnPrice,
      required final String description}) = _$RateModelImpl;

  factory _RateModel.fromJson(Map<String, dynamic> json) =
      _$RateModelImpl.fromJson;

  @override
  String get designName;
  @override
  String get rawStitchRate;
  @override
  double get stitchRate;
  @override
  List<StitcheModel> get stitches;
  @override
  String get rawAddOnPrice;
  @override
  double get addOnPrice;
  @override
  String get description;

  /// Create a copy of RateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateModelImplCopyWith<_$RateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
