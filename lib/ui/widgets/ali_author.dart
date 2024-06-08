import 'package:flutter/material.dart';

class AliAuthor extends StatelessWidget {
  final List<String> authors;

  const AliAuthor({
    super.key,
    required this.authors,
  });

  @override
  Widget build(BuildContext context) {
    return Text(authors.join('; '));
  }
}
