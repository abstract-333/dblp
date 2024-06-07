import 'package:json_annotation/json_annotation.dart';

import 'authors.dart';
part 'info.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Info {
  final Authors? authors;
  final String? title;
  final String? year;
  final String? type;
  final String? access;
  final String? key;
  final String? ee;
  final String? url;

  const Info({
    required this.authors,
    required this.title,
    required this.year,
    required this.type,
    required this.access,
    required this.key,
    required this.ee,
    required this.url,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
