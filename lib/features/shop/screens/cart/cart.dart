import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/products/cart/add_remove_button.dart';
import 'package:opulent/common/widgets/products/cart/cart_item.dart';
import 'package:opulent/common/widgets/texts/product_price_text.dart';
import 'package:opulent/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(OpulentSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {},
          child: Text('Checkout ₹15000'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(OpulentSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) =>
              SizedBox(height: OpulentSizes.spaceBtwSections),
          itemCount: 4,
          itemBuilder: (_, index) => Column(
            children: [
              OpulentCartItem(),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70),
                      OpulentProductQuantityWithAddAndRemoveButton(),
                    ],
                  ),
                  OpulentProductPriceText(price: '15000')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
