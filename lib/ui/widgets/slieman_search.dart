import 'package:flutter/material.dart';

// سليمان ميا
class SliemanSearch {
  InputDecoration getInputDecoration() => InputDecoration(
        filled: true,
        hintText: 'Search...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
      );
}
