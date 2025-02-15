import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/images/circular_image.dart';
import 'package:opulent/common/widgets/texts/brand_title_verified_icon.dart';
import 'package:opulent/common/widgets/texts/product_price_text.dart';
import 'package:opulent/common/widgets/texts/product_title_text.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/enums.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentProductMetaData extends StatelessWidget {
  const OpulentProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            OpulentRoundedContainer(
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
            SizedBox(width: OpulentSizes.spaceBtwItems),
            Text(
              '₹20000',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            SizedBox(width: OpulentSizes.spaceBtwItems),
            OpulentProductPriceText(price: '15000', isLarge: true),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 1.5),
        OpulentProductTitleText(title: 'Green Nike Sports Shoes'),
        SizedBox(height: OpulentSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            OpulentProductTitleText(title: 'Status'),
            SizedBox(width: OpulentSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            OpulentCircularImage(
              image: OpulentImages.shoeIcon,
              width: 32,
              height: 32,
            ),
            OpulentBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
