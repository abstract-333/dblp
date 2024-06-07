import 'package:flutter/material.dart';

// جودي سالوخة
class JoudiYear extends StatelessWidget {
  final String publicationYear;

  const JoudiYear({
    super.key,
    required this.publicationYear,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Publication Date: $publicationYear',
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    );
  }
}
