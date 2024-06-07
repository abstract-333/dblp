import 'package:flutter/material.dart';

// حلا حمود
class HalaBoxShadow {
  BoxShadow getBoxShadow() {
    return BoxShadow(
      color: Colors.black.withOpacity(0.15),
      blurRadius: 8,
      blurStyle: BlurStyle.outer,
    );
  }
}
