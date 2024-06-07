import 'package:json_annotation/json_annotation.dart';
part 'author.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake)
class Author {
  final String? text;

  const Author({required this.text});

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
