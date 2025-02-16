import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentBillingAmountSection extends StatelessWidget {
  const OpulentBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹15000', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹100', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹500', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹15600', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}