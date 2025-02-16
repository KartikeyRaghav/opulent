import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/common/widgets/texts/brand_title_verified_icon.dart';
import 'package:opulent/common/widgets/texts/product_title_text.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentCartItem extends StatelessWidget {
  const OpulentCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        OpulentRoundedImage(
          imageUrl: OpulentImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(OpulentSizes.sm),
          backgroundColor:
              dark ? OpulentColors.darkerGrey : OpulentColors.light,
        ),
        SizedBox(width: OpulentSizes.spaceBtwItems),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OpulentBrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(
                child: OpulentProductTitleText(
                  title: 'Green Sports Shoes',
                  maxLines: 1,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Color',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Green',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Size',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'UK 08',
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
