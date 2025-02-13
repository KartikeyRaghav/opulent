import 'package:bytecart/utils/constants/colors.dart';
import 'package:bytecart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BElevatedButtonTheme {
  BElevatedButtonTheme._();

  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BColors.light,
      backgroundColor: BColors.primary,
      disabledForegroundColor: BColors.darkGrey,
      disabledBackgroundColor: BColors.buttonDisabled,
      side: const BorderSide(color: BColors.primary),
      padding: const EdgeInsets.symmetric(vertical: BSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: BColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BSizes.buttonRadius)),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: BColors.light,
      backgroundColor: BColors.primary,
      disabledForegroundColor: BColors.darkGrey,
      disabledBackgroundColor: BColors.darkerGrey,
      side: const BorderSide(color: BColors.primary),
      padding: const EdgeInsets.symmetric(vertical: BSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: BColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BSizes.buttonRadius)),
    ),
  );
}
