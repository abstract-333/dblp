import 'package:flutter/material.dart';

// ريتا الدوجي
class RitaType extends StatelessWidget {
  final String theType;

  const RitaType({super.key, required this.theType});

  @override
  Widget build(BuildContext context) {
    return Text(theType,
        style: const TextStyle(color: Colors.grey),
        maxLines: 1,
        overflow: TextOverflow.ellipsis);
  }
}
