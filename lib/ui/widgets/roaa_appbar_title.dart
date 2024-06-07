import 'package:flutter/material.dart';

// رؤى كشور
class RoaAppBarTitle extends StatelessWidget {
  final int? number;
  const RoaAppBarTitle({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    String text = number == 0 ? 'D B L P' : 'Items: $number';
    return Text(text);
  }
}
