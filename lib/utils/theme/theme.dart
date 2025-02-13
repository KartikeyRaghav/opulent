import 'package:opulent/utils/theme/custom_themes/appbar_theme.dart';
import 'package:opulent/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:opulent/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:opulent/utils/theme/custom_themes/chip_theme.dart';
import 'package:opulent/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:opulent/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:opulent/utils/theme/custom_themes/text_field_theme.dart';
import 'package:opulent/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: BTextTheme.lightTextTheme,
    chipTheme: BChipTheme.lightChipTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckboxTheme.lightCheckboxTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme,
    chipTheme: BChipTheme.darkChipTheme,
    bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
    appBarTheme: BAppBarTheme.darkAppBarTheme,
    checkboxTheme: BCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
