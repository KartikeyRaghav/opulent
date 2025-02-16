import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/brand/brand_card.dart';
import 'package:opulent/common/widgets/layout/grid_layout.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/features/shop/screens/brands/brand_products.dart';
import 'package:opulent/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              OpulentSectionHeading(title: 'Brands'),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              OpulentGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => OpulentBrandCard(
                  showBorder: true,
                  onTap: () => Get.to(() => BrandProducts()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
