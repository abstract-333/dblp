// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      authors:
          json['authors'] == null ? null : Authors.fromJson(json['authors']),
      title: json['title'] as String?,
      year: json['year'] as String?,
      type: json['type'] as String?,
      access: json['access'] as String?,
      key: json['key'] as String?,
      ee: json['ee'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'authors': instance.authors,
      'title': instance.title,
      'year': instance.year,
      'type': instance.type,
      'access': instance.access,
      'key': instance.key,
      'ee': instance.ee,
      'url': instance.url,
    };
