import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:opulent/features/shop/screens/home/widgets/home_categories.dart';
import 'package:opulent/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OpulentPrimaryHeaderContainer(
              child: Column(
                children: [
                  OpulentHomeAppBar(),
                  SizedBox(height: OpulentSizes.spaceBtwSections),
                  OpulentSearchContainer(text: 'Search in Store'),
                  SizedBox(height: OpulentSizes.spaceBtwSections),
                  Padding(
                    padding: EdgeInsets.only(left: OpulentSizes.defaultSpace),
                    child: Column(
                      children: [
                        OpulentSectionHeading(
                          title: 'Popular Catrgories',
                          showActionButton: false,
                          textColor: OpulentColors.white,
                        ),
                        SizedBox(height: OpulentSizes.spaceBtwItems),
                        OpulentHomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(OpulentSizes.defaultSpace),
              child: OpulentPromoSlider(
                banners: [
                  OpulentImages.promoBanner1,
                  OpulentImages.promoBanner2,
                  OpulentImages.promoBanner3,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
