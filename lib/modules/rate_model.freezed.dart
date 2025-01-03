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
  double get stitchRate => throw _privateConstructorUsedError;
  Map<dynamic, double> get stitches => throw _privateConstructorUsedError;
  Map<dynamic, double> get heads => throw _privateConstructorUsedError;
  double get addOnPrice => throw _privateConstructorUsedError;

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
      {double stitchRate,
      Map<dynamic, double> stitches,
      Map<dynamic, double> heads,
      double addOnPrice});
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
    Object? stitchRate = null,
    Object? stitches = null,
    Object? heads = null,
    Object? addOnPrice = null,
  }) {
    return _then(_value.copyWith(
      stitchRate: null == stitchRate
          ? _value.stitchRate
          : stitchRate // ignore: cast_nullable_to_non_nullable
              as double,
      stitches: null == stitches
          ? _value.stitches
          : stitches // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, double>,
      heads: null == heads
          ? _value.heads
          : heads // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, double>,
      addOnPrice: null == addOnPrice
          ? _value.addOnPrice
          : addOnPrice // ignore: cast_nullable_to_non_nullable
              as double,
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
      {double stitchRate,
      Map<dynamic, double> stitches,
      Map<dynamic, double> heads,
      double addOnPrice});
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
    Object? stitchRate = null,
    Object? stitches = null,
    Object? heads = null,
    Object? addOnPrice = null,
  }) {
    return _then(_$RateModelImpl(
      stitchRate: null == stitchRate
          ? _value.stitchRate
          : stitchRate // ignore: cast_nullable_to_non_nullable
              as double,
      stitches: null == stitches
          ? _value._stitches
          : stitches // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, double>,
      heads: null == heads
          ? _value._heads
          : heads // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, double>,
      addOnPrice: null == addOnPrice
          ? _value.addOnPrice
          : addOnPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateModelImpl extends _RateModel {
  const _$RateModelImpl(
      {required this.stitchRate,
      required final Map<dynamic, double> stitches,
      required final Map<dynamic, double> heads,
      required this.addOnPrice})
      : _stitches = stitches,
        _heads = heads,
        super._();

  factory _$RateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateModelImplFromJson(json);

  @override
  final double stitchRate;
  final Map<dynamic, double> _stitches;
  @override
  Map<dynamic, double> get stitches {
    if (_stitches is EqualUnmodifiableMapView) return _stitches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_stitches);
  }

  final Map<dynamic, double> _heads;
  @override
  Map<dynamic, double> get heads {
    if (_heads is EqualUnmodifiableMapView) return _heads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_heads);
  }

  @override
  final double addOnPrice;

  @override
  String toString() {
    return 'RateModel(stitchRate: $stitchRate, stitches: $stitches, heads: $heads, addOnPrice: $addOnPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateModelImpl &&
            (identical(other.stitchRate, stitchRate) ||
                other.stitchRate == stitchRate) &&
            const DeepCollectionEquality().equals(other._stitches, _stitches) &&
            const DeepCollectionEquality().equals(other._heads, _heads) &&
            (identical(other.addOnPrice, addOnPrice) ||
                other.addOnPrice == addOnPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      stitchRate,
      const DeepCollectionEquality().hash(_stitches),
      const DeepCollectionEquality().hash(_heads),
      addOnPrice);

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

abstract class _RateModel extends RateModel {
  const factory _RateModel(
      {required final double stitchRate,
      required final Map<dynamic, double> stitches,
      required final Map<dynamic, double> heads,
      required final double addOnPrice}) = _$RateModelImpl;
  const _RateModel._() : super._();

  factory _RateModel.fromJson(Map<String, dynamic> json) =
      _$RateModelImpl.fromJson;

  @override
  double get stitchRate;
  @override
  Map<dynamic, double> get stitches;
  @override
  Map<dynamic, double> get heads;
  @override
  double get addOnPrice;

  /// Create a copy of RateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateModelImplCopyWith<_$RateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
