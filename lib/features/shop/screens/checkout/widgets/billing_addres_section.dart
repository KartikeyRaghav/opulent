import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentBillingAddresSection extends StatelessWidget {
  const OpulentBillingAddresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OpulentSectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Opulent', style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: OpulentSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(width: OpulentSizes.spaceBtwItems),
            Text(
              '+91-9711249305',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(width: OpulentSizes.spaceBtwItems),
            Expanded(
              child: Text(
                '402-A1, VSB, IIT Indore, Simrol, Madhya Pradesh - 453552',
                softWrap: true,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
