// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embroidery_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmbroideryItemImpl _$$EmbroideryItemImplFromJson(Map<String, dynamic> json) =>
    _$EmbroideryItemImpl(
      name: json['name'] as String,
      stitches: (json['stitches'] as num).toInt(),
      head: (json['head'] as num).toDouble(),
    );

Map<String, dynamic> _$$EmbroideryItemImplToJson(
        _$EmbroideryItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'stitches': instance.stitches,
      'head': instance.head,
    };
