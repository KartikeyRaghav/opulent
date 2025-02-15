import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/brand/brand_card.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentBrandShowCase extends StatelessWidget {
  const OpulentBrandShowCase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return OpulentRoundedContainer(
      padding: EdgeInsets.all(OpulentSizes.md),
      showBorder: true,
      borderColor: OpulentColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: OpulentSizes.spaceBtwItems),
      child: Column(
        children: [
          OpulentBrandCard(showBorder: false),
          SizedBox(height: OpulentSizes.spaceBtwItems),
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Expanded(
      child: OpulentRoundedContainer(
        height: 100,
        backgroundColor: dark ? OpulentColors.darkerGrey : OpulentColors.light,
        margin: EdgeInsets.only(right: OpulentSizes.sm),
        padding: EdgeInsets.all(OpulentSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
