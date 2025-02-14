import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/styles/shadows.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/icons/circular_icon.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/common/widgets/texts/product_price_text.dart';
import 'package:opulent/common/widgets/texts/product_title_text.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentProductCardVertical extends StatelessWidget {
  const OpulentProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [OpulentShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(OpulentSizes.productImageRadius),
          color: dark ? OpulentColors.darkerGrey : OpulentColors.white,
        ),
        child: Column(
          children: [
            OpulentRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(OpulentSizes.sm),
              backgroundColor: dark ? OpulentColors.dark : OpulentColors.light,
              child: Stack(
                children: [
                  OpulentRoundedImage(
                    imageUrl: OpulentImages.productImage1,
                    applyImageRadius: true,
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
            SizedBox(height: OpulentSizes.spaceBtwItems / 2),
            Padding(
              padding: EdgeInsets.only(left: OpulentSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OpulentProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(height: OpulentSizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(width: OpulentSizes.sm),
                      Icon(
                        Iconsax.verify5,
                        color: OpulentColors.primary,
                        size: OpulentSizes.iconXs,
                      ),
                    ],
                  ),
                  // Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OpulentProductPriceText(
                        price: '35',
                        isLarge: true,
                      ),
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
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
