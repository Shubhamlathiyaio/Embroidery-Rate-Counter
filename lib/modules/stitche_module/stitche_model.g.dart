// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stitche_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StitcheModelImpl _$$StitcheModelImplFromJson(Map<String, dynamic> json) =>
    _$StitcheModelImpl(
      key: $enumDecode(_$ItemsEnumMap, json['key']),
      name: json['name'] as String,
      stitch: (json['stitch'] as num).toDouble(),
      head: (json['head'] as num).toDouble(),
      rawStitch: json['rawStitch'] as String,
      rawHead: json['rawHead'] as String,
    );

Map<String, dynamic> _$$StitcheModelImplToJson(_$StitcheModelImpl instance) =>
    <String, dynamic>{
      'key': _$ItemsEnumMap[instance.key]!,
      'name': instance.name,
      'stitch': instance.stitch,
      'head': instance.head,
      'rawStitch': instance.rawStitch,
      'rawHead': instance.rawHead,
    };

const _$ItemsEnumMap = {
  Items.cPallu: 'cPallu',
  Items.pallu: 'pallu',
  Items.skt: 'skt',
  Items.blz: 'blz',
};
