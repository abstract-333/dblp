import 'package:json_annotation/json_annotation.dart';

import 'hits.dart';
part 'result.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Result {
  final Hits? hits;

  const Result({required this.hits});
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
