import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/images/circular_image.dart';
import 'package:opulent/common/widgets/texts/brand_title_verified_icon.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/enums.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentBrandCard extends StatelessWidget {
  const OpulentBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: OpulentRoundedContainer(
        padding: EdgeInsets.all(OpulentSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: OpulentCircularImage(
                backgroundColor: Colors.transparent,
                overlayColor: dark ? OpulentColors.white : OpulentColors.black,
                image: OpulentImages.clothIcon,
              ),
            ),
            SizedBox(width: OpulentSizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OpulentBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
