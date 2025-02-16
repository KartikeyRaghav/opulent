import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/images/rounded_image.dart';
import 'package:opulent/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Sports Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              OpulentRoundedImage(
                imageUrl: OpulentImages.promoBanner1,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              Column(
                children: [
                  OpulentSectionHeading(
                    title: 'Sports Shirts',
                    onPressed: () {},
                  ),
                  SizedBox(height: OpulentSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => SizedBox(
                        width: OpulentSizes.spaceBtwItems,
                      ),
                      itemBuilder: (context, index) =>
                          OpulentProductCardHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
