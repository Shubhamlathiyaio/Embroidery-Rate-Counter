// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RateModelImpl _$$RateModelImplFromJson(Map<String, dynamic> json) =>
    _$RateModelImpl(
      designName: json['designName'] as String,
      stitchRate: (json['stitchRate'] as num).toDouble(),
      stitches: (json['stitches'] as List<dynamic>)
          .map((e) => StitchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      addOnPrice: (json['addOnPrice'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$RateModelImplToJson(_$RateModelImpl instance) =>
    <String, dynamic>{
      'designName': instance.designName,
      'stitchRate': instance.stitchRate,
      'stitches': instance.stitches,
      'addOnPrice': instance.addOnPrice,
      'description': instance.description,
    };
