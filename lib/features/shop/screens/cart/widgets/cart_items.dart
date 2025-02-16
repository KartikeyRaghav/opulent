import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/products/cart/add_remove_button.dart';
import 'package:opulent/common/widgets/products/cart/cart_item.dart';
import 'package:opulent/common/widgets/texts/product_price_text.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentCartItems extends StatelessWidget {
  const OpulentCartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          SizedBox(height: OpulentSizes.spaceBtwSections),
      itemCount: 4,
      itemBuilder: (_, index) => Column(
        children: [
          OpulentCartItem(),
          if (showAddRemoveButtons)
            SizedBox(height: OpulentSizes.spaceBtwItems),
          if (showAddRemoveButtons)
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
    );
  }
}
