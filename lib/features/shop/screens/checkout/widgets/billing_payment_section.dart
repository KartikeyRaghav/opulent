import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentBillingPaymentSection extends StatelessWidget {
  const OpulentBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        OpulentSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems / 2),
        Row(
          children: [
            OpulentRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? OpulentColors.light : OpulentColors.white,
              padding: EdgeInsets.all(OpulentSizes.sm),
              child: Image(
                image: AssetImage(OpulentImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: OpulentSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
