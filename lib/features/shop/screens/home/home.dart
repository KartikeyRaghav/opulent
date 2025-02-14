import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:opulent/features/shop/screens/home/widgets/home_categories.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';

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
          ],
        ),
      ),
    );
  }
}
