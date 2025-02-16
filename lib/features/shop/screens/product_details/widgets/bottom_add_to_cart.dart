import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/icons/circular_icon.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentBottomAddToCart extends StatelessWidget {
  const OpulentBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: OpulentSizes.defaultSpace,
        vertical: OpulentSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
          color: dark ? OpulentColors.darkerGrey : OpulentColors.light,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(OpulentSizes.cardRadiusLg),
            topRight: Radius.circular(OpulentSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              OpulentCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: OpulentColors.darkGrey,
                color: OpulentColors.white,
              ),
              SizedBox(width: OpulentSizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: OpulentSizes.spaceBtwItems),
              OpulentCircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: OpulentColors.black,
                color: OpulentColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(OpulentSizes.md),
              backgroundColor: OpulentColors.black,
              side: BorderSide(
                color: OpulentColors.black,
              ),
            ),
            child: Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
