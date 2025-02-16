import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/icons/circular_icon.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/common/widgets/texts/brand_title_verified_icon.dart';
import 'package:opulent/common/widgets/texts/product_price_text.dart';
import 'package:opulent/common/widgets/texts/product_title_text.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentProductCardHorizontal extends StatelessWidget {
  const OpulentProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OpulentSizes.productImageRadius),
        color: dark ? OpulentColors.darkerGrey : OpulentColors.softGrey,
      ),
      child: Row(
        children: [
          OpulentRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(OpulentSizes.sm),
            backgroundColor: dark ? OpulentColors.dark : OpulentColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: OpulentRoundedImage(
                    imageUrl: OpulentImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: OpulentRoundedContainer(
                    radius: OpulentSizes.sm,
                    backgroundColor: OpulentColors.secondary.withOpacity(0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: OpulentSizes.sm,
                      vertical: OpulentSizes.xs,
                    ),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: OpulentColors.black),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: OpulentCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 176,
            child: Padding(
              padding: EdgeInsets.only(
                top: OpulentSizes.sm,
                left: OpulentSizes.sm,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OpulentProductTitleText(
                        title: 'Green Nike Shoes',
                        smallSize: true,
                      ),
                      SizedBox(height: OpulentSizes.spaceBtwItems / 2),
                      OpulentBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: OpulentProductPriceText(price: '15000')),
                      Container(
                        decoration: BoxDecoration(
                          color: OpulentColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(OpulentSizes.cardRadiusMd),
                            bottomRight: Radius.circular(
                              OpulentSizes.productImageRadius,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          width: OpulentSizes.iconLg * 1.2,
                          height: OpulentSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: OpulentColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
