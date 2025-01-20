// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stitche_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StitcheModelImpl _$$StitcheModelImplFromJson(Map<String, dynamic> json) =>
    _$StitcheModelImpl(
      name: json['name'] as String,
      stitch: (json['stitch'] as num).toDouble(),
      head: (json['head'] as num).toDouble(),
    );

Map<String, dynamic> _$$StitcheModelImplToJson(_$StitcheModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stitch': instance.stitch,
      'head': instance.head,
    };
