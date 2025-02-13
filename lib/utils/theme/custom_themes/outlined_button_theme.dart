import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OpulentOutlinedButtonTheme {
  OpulentOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: OpulentColors.dark,
      side: const BorderSide(color: OpulentColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: OpulentColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: OpulentSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(OpulentSizes.buttonRadius)),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: OpulentColors.light,
      side: const BorderSide(color: OpulentColors.borderPrimary),
      textStyle: const TextStyle(
          fontSize: 16, color: OpulentColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(
          vertical: OpulentSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(OpulentSizes.buttonRadius)),
    ),
  );
}
