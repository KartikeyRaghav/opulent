import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: OpulentSizes.appBarHeight,
    left: OpulentSizes.defaultSpace,
    right: OpulentSizes.defaultSpace,
    bottom: OpulentSizes.defaultSpace,
  );
}
