// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateModelImpl _$$RateModelImplFromJson(Map<String, dynamic> json) =>
    _$RateModelImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      stitchRate: (json['stitchRate'] as num).toDouble(),
      stitches: (json['stitches'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      heads: (json['heads'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      addOnPrice: (json['addOnPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$RateModelImplToJson(_$RateModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'stitchRate': instance.stitchRate,
      'stitches': instance.stitches,
      'heads': instance.heads,
      'addOnPrice': instance.addOnPrice,
    };
