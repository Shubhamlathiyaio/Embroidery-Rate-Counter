// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stitch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StitchModelImpl _$$StitchModelImplFromJson(Map<String, dynamic> json) =>
    _$StitchModelImpl(
      key: $enumDecode(_$ItemsEnumMap, json['key']),
      name: json['name'] as String,
      stitch: (json['stitch'] as num).toDouble(),
      head: (json['head'] as num).toDouble(),
    );

Map<String, dynamic> _$$StitchModelImplToJson(_$StitchModelImpl instance) =>
    <String, dynamic>{
      'key': _$ItemsEnumMap[instance.key]!,
      'name': instance.name,
      'stitch': instance.stitch,
      'head': instance.head,
    };

const _$ItemsEnumMap = {
  Items.cPallu: 'cPallu',
  Items.pallu: 'pallu',
  Items.skt: 'skt',
  Items.blz: 'blz',
};
