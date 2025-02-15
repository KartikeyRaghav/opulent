import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/icons/circular_icon.dart';
import 'package:opulent/common/widgets/layout/grid_layout.dart';
import 'package:opulent/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:opulent/features/shop/screens/home/home.dart';
import 'package:opulent/utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentCustomAppbar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          OpulentCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(
              () => HomeScreen(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              OpulentGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => OpulentProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
