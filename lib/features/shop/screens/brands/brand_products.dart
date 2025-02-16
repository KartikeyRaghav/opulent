import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/brand/brand_card.dart';
import 'package:opulent/common/widgets/products/sortable/sortable_products.dart';
import 'package:opulent/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Nike'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              OpulentBrandCard(showBorder: true),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              OpulentSortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
