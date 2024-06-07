import 'package:flutter/material.dart';

// فرح أبو زينب
class FarahTitle extends StatelessWidget {
  const FarahTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
