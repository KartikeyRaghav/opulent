import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentCartCounterIcon extends StatelessWidget {
  const OpulentCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color:
                iconColor ?? (dark ? OpulentColors.white : OpulentColors.black),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: iconColor ??
                  (dark ? OpulentColors.white : OpulentColors.black),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: iconColor != null
                          ? OpulentColors.black
                          : (dark ? OpulentColors.black : OpulentColors.white),
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
