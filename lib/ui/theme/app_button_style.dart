import 'package:dblp/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
// بشار حسن

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColors.mainLightBlue),
      textStyle: MaterialStateProperty.all(const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      )));
}
