import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/products/cart/coupon_code.dart';
import 'package:opulent/common/widgets/success_screen/success_screen.dart';
import 'package:opulent/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:opulent/features/shop/screens/checkout/widgets/billing_addres_section.dart';
import 'package:opulent/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:opulent/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:opulent/navigation_menu.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: OpulentAppbar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(OpulentSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => SuccessScreen(
                image: OpulentImages.successfulPaymentIcon,
                title: 'Payment Success',
                subTitle: 'Your item will be shipped soon!',
                onPressed: () => Get.offAll(() => NavigationMenu()),
              )),
          child: Text('Checkout ₹15000'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              OpulentCartItems(showAddRemoveButtons: false),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              OpulentCouponCode(),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              OpulentRoundedContainer(
                showBorder: true,
                padding: EdgeInsets.all(OpulentSizes.md),
                backgroundColor:
                    dark ? OpulentColors.black : OpulentColors.white,
                child: Column(
                  children: [
                    OpulentBillingAmountSection(),
                    SizedBox(height: OpulentSizes.spaceBtwItems),
                    Divider(),
                    SizedBox(height: OpulentSizes.spaceBtwItems),
                    OpulentBillingPaymentSection(),
                    SizedBox(height: OpulentSizes.spaceBtwItems),
                    OpulentBillingAddresSection(),
                    SizedBox(height: OpulentSizes.spaceBtwItems),
                  ],
                ),
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
