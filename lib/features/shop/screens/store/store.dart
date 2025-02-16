import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/appbar/tabbar.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:opulent/common/widgets/layout/grid_layout.dart';
import 'package:opulent/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/common/widgets/brand/brand_card.dart';
import 'package:opulent/features/shop/screens/brands/all_brands.dart';
import 'package:opulent/features/shop/screens/store/widgets/category_tab.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: OpulentAppbar(
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
                expandedHeight: 400,
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
                        onPressed: () => Get.to(() => AllBrandsScreen()),
                      ),
                      SizedBox(height: OpulentSizes.spaceBtwItems / 1.5),
                      OpulentGridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return OpulentBrandCard(showBorder: true);
                        },
                      ),
                    ],
                  ),
                ),
                bottom: OpulentTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              OpulentCategoryTab(),
              OpulentCategoryTab(),
              OpulentCategoryTab(),
              OpulentCategoryTab(),
              OpulentCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
