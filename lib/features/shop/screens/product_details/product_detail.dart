import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:opulent/features/shop/screens/product_details/widgets/rating_share.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: OpulentBottomAddToCart(),
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
                  OpulentProductAttributes(),
                  SizedBox(height: OpulentSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Checkout'),
                    ),
                  ),
                  SizedBox(height: OpulentSizes.spaceBtwSections),
                  OpulentSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  SizedBox(height: OpulentSizes.spaceBtwItems),
                  ReadMoreText(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut debitis modi repellat soluta repudiandae ducimus velit repellendus unde accusamus corporis. Quo, recusandae corporis natus nostrum quod quibusdam hic cum esse reiciendis pariatur inventore explicabo eaque vero. Repellat maxime animi consectetur nobis omnis aspernatur, esse non ut nostrum recusandae eveniet optio earum quo modi obcaecati incidunt vitae distinctio saepe, aperiam corporis?',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Divider(),
                  SizedBox(height: OpulentSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OpulentSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                        onPressed: () {},
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: OpulentSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
