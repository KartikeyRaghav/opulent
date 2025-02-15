import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/brand/brand_show_case.dart';
import 'package:opulent/common/widgets/layout/grid_layout.dart';
import 'package:opulent/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentCategoryTab extends StatelessWidget {
  const OpulentCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              OpulentBrandShowCase(
                images: [
                  OpulentImages.productImage1,
                  OpulentImages.productImage2,
                  OpulentImages.productImage3,
                ],
              ),
              OpulentSectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => OpulentProductCardVertical(),
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
            ],
          ),
        )
      ],
    );
  }
}
