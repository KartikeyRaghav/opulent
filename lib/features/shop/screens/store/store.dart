import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:opulent/common/widgets/images/circular_image.dart';
import 'package:opulent/common/widgets/layout/grid_layout.dart';
import 'package:opulent/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:opulent/common/widgets/texts/brand_title_verified_icon.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/enums.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: OpulentCustomAppbar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [OpulentCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxScrollable) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: OpulentHelperFunctions.isDarkMode(context)
                  ? OpulentColors.black
                  : OpulentColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(OpulentSizes.defaultSpace),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(height: OpulentSizes.spaceBtwItems),
                    OpulentSearchContainer(
                      text: 'Search in Store',
                      padding: EdgeInsets.zero,
                      showBorder: true,
                      showBackground: false,
                    ),
                    SizedBox(height: OpulentSizes.spaceBtwSections),
                    OpulentSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    SizedBox(height: OpulentSizes.spaceBtwItems / 1.5),
                    OpulentGridLayout(
                      mainAxisExtent: 80,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: OpulentRoundedContainer(
                            padding: EdgeInsets.all(OpulentSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  child: OpulentCircularImage(
                                    backgroundColor: Colors.transparent,
                                    overlayColor: dark
                                        ? OpulentColors.white
                                        : OpulentColors.black,
                                    image: OpulentImages.clothIcon,
                                  ),
                                ),
                                SizedBox(width: OpulentSizes.spaceBtwItems / 2),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      OpulentBrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
