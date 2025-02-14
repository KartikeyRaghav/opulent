import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/features/shop/controllers/home_controller.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentPromoSlider extends StatelessWidget {
  const OpulentPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners
              .map((url) => OpulentRoundedImage(
                    imageUrl: url,
                  ))
              .toList(),
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  OpulentCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? OpulentColors.primary
                        : OpulentColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
