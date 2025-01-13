// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embroidery_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmbroideryItem _$EmbroideryItemFromJson(Map<String, dynamic> json) {
  return _EmbroideryItem.fromJson(json);
}

/// @nodoc
mixin _$EmbroideryItem {
  String get name => throw _privateConstructorUsedError;
  int get stitches => throw _privateConstructorUsedError;
  double get head => throw _privateConstructorUsedError;

  /// Serializes this EmbroideryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmbroideryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmbroideryItemCopyWith<EmbroideryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbroideryItemCopyWith<$Res> {
  factory $EmbroideryItemCopyWith(
          EmbroideryItem value, $Res Function(EmbroideryItem) then) =
      _$EmbroideryItemCopyWithImpl<$Res, EmbroideryItem>;
  @useResult
  $Res call({String name, int stitches, double head});
}

/// @nodoc
class _$EmbroideryItemCopyWithImpl<$Res, $Val extends EmbroideryItem>
    implements $EmbroideryItemCopyWith<$Res> {
  _$EmbroideryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmbroideryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stitches = null,
    Object? head = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stitches: null == stitches
          ? _value.stitches
          : stitches // ignore: cast_nullable_to_non_nullable
              as int,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmbroideryItemImplCopyWith<$Res>
    implements $EmbroideryItemCopyWith<$Res> {
  factory _$$EmbroideryItemImplCopyWith(_$EmbroideryItemImpl value,
          $Res Function(_$EmbroideryItemImpl) then) =
      __$$EmbroideryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int stitches, double head});
}

/// @nodoc
class __$$EmbroideryItemImplCopyWithImpl<$Res>
    extends _$EmbroideryItemCopyWithImpl<$Res, _$EmbroideryItemImpl>
    implements _$$EmbroideryItemImplCopyWith<$Res> {
  __$$EmbroideryItemImplCopyWithImpl(
      _$EmbroideryItemImpl _value, $Res Function(_$EmbroideryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmbroideryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? stitches = null,
    Object? head = null,
  }) {
    return _then(_$EmbroideryItemImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stitches: null == stitches
          ? _value.stitches
          : stitches // ignore: cast_nullable_to_non_nullable
              as int,
      head: null == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmbroideryItemImpl extends _EmbroideryItem {
  const _$EmbroideryItemImpl(
      {required this.name, required this.stitches, required this.head})
      : super._();

  factory _$EmbroideryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmbroideryItemImplFromJson(json);

  @override
  final String name;
  @override
  final int stitches;
  @override
  final double head;

  @override
  String toString() {
    return 'EmbroideryItem(name: $name, stitches: $stitches, head: $head)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmbroideryItemImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stitches, stitches) ||
                other.stitches == stitches) &&
            (identical(other.head, head) || other.head == head));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, stitches, head);

  /// Create a copy of EmbroideryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmbroideryItemImplCopyWith<_$EmbroideryItemImpl> get copyWith =>
      __$$EmbroideryItemImplCopyWithImpl<_$EmbroideryItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmbroideryItemImplToJson(
      this,
    );
  }
}

abstract class _EmbroideryItem extends EmbroideryItem {
  const factory _EmbroideryItem(
      {required final String name,
      required final int stitches,
      required final double head}) = _$EmbroideryItemImpl;
  const _EmbroideryItem._() : super._();

  factory _EmbroideryItem.fromJson(Map<String, dynamic> json) =
      _$EmbroideryItemImpl.fromJson;

  @override
  String get name;
  @override
  int get stitches;
  @override
  double get head;

  /// Create a copy of EmbroideryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmbroideryItemImplCopyWith<_$EmbroideryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
