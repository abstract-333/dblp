// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      hits: json['hits'] == null ? null : Hits.fromJson(json['hits']),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'hits': instance.hits,
    };
