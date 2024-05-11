// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authors _$AuthorsFromJson(Map<String, dynamic> json) => Authors(
      authors: (json['authors'] as List<dynamic>?)
          ?.map((e) => Author.fromJson(e))
          .toList(),
    );

Map<String, dynamic> _$AuthorsToJson(Authors instance) => <String, dynamic>{
      'author': instance.authors,
    };
