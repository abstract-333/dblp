import 'package:json_annotation/json_annotation.dart';

import 'result.dart';
part 'publications.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Publications {
  final Result? result;

  const Publications({required this.result});
  factory Publications.fromJson(Map<String, dynamic> json) =>
      _$PublicationsFromJson(json);

  Map<String, dynamic> toJson() => _$PublicationsToJson(this);
}
