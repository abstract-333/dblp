import 'package:json_annotation/json_annotation.dart';

import 'hit.dart';
part 'hits.g.dart';
// بشار حسن

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Hits {
  final int currentPage;
  final int totalPage;
  final List<Hit>? hit;

  const Hits({
    required this.hit,
    required this.currentPage,
    required this.totalPage,
  });

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitsFromJson(json);

  Map<String, dynamic> toJson() => _$HitsToJson(this);
}
