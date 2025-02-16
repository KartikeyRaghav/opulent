import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:opulent/features/shop/screens/checkout/checkout.dart';
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
          onPressed: () => Get.to(() => CheckoutScreen()),
          child: Text('Checkout ₹15000'),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: OpulentCartItems()),
    );
  }
}
