// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return Hits(
    totalPage: int.parse(json['@total']) ~/ 30,
    currentPage:
        (int.parse(json['@computed']) - int.parse(json['@first'])) ~/ 30,
    hit: (json['hit'] as List<dynamic>?)?.map((e) => Hit.fromJson(e)).toList(),
  );
}

Map<String, dynamic> _$HitsToJson(Hits instance) => <String, dynamic>{
      'hit': instance.hit,
      'totalPage': instance.totalPage,
      'currentPage': instance.currentPage,
    };
