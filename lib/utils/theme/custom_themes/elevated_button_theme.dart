import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OpulentElevatedButtonTheme {
  OpulentElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: OpulentColors.light,
      backgroundColor: OpulentColors.primary,
      disabledForegroundColor: OpulentColors.darkGrey,
      disabledBackgroundColor: OpulentColors.buttonDisabled,
      side: const BorderSide(color: OpulentColors.primary),
      padding: const EdgeInsets.symmetric(vertical: OpulentSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: OpulentColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(OpulentSizes.buttonRadius)),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: OpulentColors.light,
      backgroundColor: OpulentColors.primary,
      disabledForegroundColor: OpulentColors.darkGrey,
      disabledBackgroundColor: OpulentColors.darkerGrey,
      side: const BorderSide(color: OpulentColors.primary),
      padding: const EdgeInsets.symmetric(vertical: OpulentSizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: OpulentColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(OpulentSizes.buttonRadius)),
    ),
  );
}
