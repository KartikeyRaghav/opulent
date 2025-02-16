import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/icons/circular_icon.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentProductQuantityWithAddAndRemoveButton extends StatelessWidget {
  const OpulentProductQuantityWithAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        OpulentCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: OpulentSizes.md,
          color: dark ? OpulentColors.white : OpulentColors.black,
          backgroundColor:
              dark ? OpulentColors.darkerGrey : OpulentColors.light,
        ),
        SizedBox(width: OpulentSizes.spaceBtwItems),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(width: OpulentSizes.spaceBtwItems),
        OpulentCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: OpulentSizes.md,
          color: OpulentColors.white,
          backgroundColor: OpulentColors.primary,
        ),
      ],
    );
  }
}
