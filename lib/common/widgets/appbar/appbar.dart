import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/device/device_utility.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentAppbar extends StatelessWidget implements PreferredSizeWidget {
  const OpulentAppbar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: OpulentSizes.md,
      ),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? OpulentColors.white : OpulentColors.black,
                ),
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: Icon(
                      leadingIcon,
                      color: dark ? OpulentColors.white : OpulentColors.black,
                    ),
                  )
                : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
        OpulentDeviceUtils.getAppBarHeight(),
      );
}
