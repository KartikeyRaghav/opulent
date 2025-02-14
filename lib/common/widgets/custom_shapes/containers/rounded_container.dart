import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentRoundedContainer extends StatelessWidget {
  const OpulentRoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = OpulentSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.backgroundColor = OpulentColors.white,
      this.borderColor = OpulentColors.borderPrimary,
      this.padding,
      this.margin});

  final double? width, height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color backgroundColor, borderColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
