import 'package:json_annotation/json_annotation.dart';

import 'author.dart';
part 'authors.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Authors {
  final List<Author>? authors;

  const Authors({required this.authors});

  factory Authors.fromJson(Map<String, dynamic> json) =>
      _$AuthorsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorsToJson(this);
}
