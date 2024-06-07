import 'package:json_annotation/json_annotation.dart';

import 'info.dart';
part 'hit.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Hit {
  final Info? info;

  @JsonKey(name: '@id')
  final int? id;
  final String? url;

  const Hit({
    required this.info,
    required this.url,
    required this.id,
  });

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);

  Map<String, dynamic> toJson() => _$HitToJson(this);
}
