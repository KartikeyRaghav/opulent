import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OpulentTextFormFieldTheme {
  OpulentTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: OpulentColors.darkGrey,
    suffixIconColor: OpulentColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: OpulentSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: OpulentSizes.fontSizeMd, color: OpulentColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: OpulentSizes.fontSizeSm, color: OpulentColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: OpulentColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: OpulentColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: OpulentColors.darkGrey,
    suffixIconColor: OpulentColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: OpulentSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: OpulentSizes.fontSizeMd, color: OpulentColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: OpulentSizes.fontSizeSm, color: OpulentColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: OpulentColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: OpulentColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OpulentSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: OpulentColors.warning),
    ),
  );
}
