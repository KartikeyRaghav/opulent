import 'package:opulent/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class OpulentChipTheme {
  OpulentChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: OpulentColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: OpulentColors.black),
    selectedColor: OpulentColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: OpulentColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: OpulentColors.darkerGrey,
    labelStyle: TextStyle(color: OpulentColors.white),
    selectedColor: OpulentColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: OpulentColors.white,
  );
}
