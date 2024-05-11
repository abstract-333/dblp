// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hit _$HitFromJson(Map<String, dynamic> json) {
  return Hit(
    id: int.parse(json['@id']),
    info: json['info'] == null ? null : Info.fromJson(json['info']),
    url: json['url'] as String?,
  );
}

Map<String, dynamic> _$HitToJson(Hit instance) => <String, dynamic>{
      'id': instance.id,
      'info': instance.info,
      'url': instance.url,
    };
