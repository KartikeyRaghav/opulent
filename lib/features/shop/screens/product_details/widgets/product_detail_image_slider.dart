import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:opulent/common/widgets/icons/circular_icon.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentProductImageSlider extends StatelessWidget {
  const OpulentProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return OpulentCurvedEdgesWidget(
      child: Container(
        color: dark ? OpulentColors.darkerGrey : OpulentColors.light,
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  OpulentSizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(
                      OpulentImages.productImage1,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: OpulentSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) =>
                      SizedBox(width: OpulentSizes.spaceBtwItems),
                  itemCount: 4,
                  itemBuilder: (_, index) => OpulentRoundedImage(
                    imageUrl: OpulentImages.productImage3,
                    width: 80,
                    border: Border.all(color: OpulentColors.primary),
                    padding: EdgeInsets.all(OpulentSizes.sm),
                    backgroundColor:
                        dark ? OpulentColors.dark : OpulentColors.white,
                  ),
                ),
              ),
            ),
            OpulentAppbar(
              showBackArrow: true,
              actions: [
                OpulentCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
