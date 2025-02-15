import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/device/device_utility.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentTabBar extends StatelessWidget implements PreferredSizeWidget {
  const OpulentTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? OpulentColors.black : OpulentColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: OpulentColors.primary,
        labelColor: dark ? OpulentColors.white : OpulentColors.primary,
        unselectedLabelColor: OpulentColors.darkGrey,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(OpulentDeviceUtils.getAppBarHeight());
}
