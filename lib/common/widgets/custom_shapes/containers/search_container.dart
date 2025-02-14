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
  });

  final String text;
  final IconData? icon;
  final bool showBorder, showBackground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: OpulentSizes.defaultSpace),
        child: Container(
          width: OpulentDeviceUtils.getScreenWidth(context),
          padding: EdgeInsets.all(OpulentSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? OpulentColors.white
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
