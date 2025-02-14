import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/colors.dart';

class OpulentShadowStyle{
  static final verticalProductShadow = BoxShadow(
    color: OpulentColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: OpulentColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0, 2)
  );
}