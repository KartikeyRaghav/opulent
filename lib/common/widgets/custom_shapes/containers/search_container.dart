import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/device/device_utility.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentSearchContainer extends StatelessWidget {
  const OpulentSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
    this.onTap,
    this.padding =
        const EdgeInsets.symmetric(horizontal: OpulentSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBorder, showBackground;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: OpulentDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(OpulentSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? OpulentColors.black
                    : OpulentColors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(OpulentSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: OpulentColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: OpulentColors.darkerGrey,
              ),
              SizedBox(width: OpulentSizes.spaceBtwItems),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
