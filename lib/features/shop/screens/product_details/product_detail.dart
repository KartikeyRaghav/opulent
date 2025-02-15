import 'package:flutter/material.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:opulent/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            OpulentProductImageSlider(),
            Padding(
              padding: EdgeInsets.only(
                right: OpulentSizes.defaultSpace,
                left: OpulentSizes.defaultSpace,
                bottom: OpulentSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  OpulentRatingAndShare(),
                  OpulentProductMetaData(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
