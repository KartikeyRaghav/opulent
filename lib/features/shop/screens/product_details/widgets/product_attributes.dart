import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/chips/choice_chip.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/common/widgets/texts/product_price_text.dart';
import 'package:opulent/common/widgets/texts/product_title_text.dart';
import 'package:opulent/common/widgets/texts/section_heading.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentProductAttributes extends StatelessWidget {
  const OpulentProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        OpulentRoundedContainer(
          padding: EdgeInsets.all(OpulentSizes.md),
          backgroundColor: dark ? OpulentColors.darkerGrey : OpulentColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  OpulentSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  SizedBox(width: OpulentSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          OpulentProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          Text(
                            '₹20000',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: OpulentSizes.spaceBtwItems),
                          OpulentProductPriceText(price: '15000')
                        ],
                      ),
                      Row(
                        children: [
                          OpulentProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              OpulentProductTitleText(
                title:
                    'This is the description of the product and it can go upto 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        SizedBox(height: OpulentSizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OpulentSectionHeading(
              title: 'Colors',
              showActionButton: false,
            ),
            SizedBox(height: OpulentSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                OpulentChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                OpulentChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                OpulentChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OpulentSectionHeading(
              title: 'Size',
              showActionButton: false,
            ),
            SizedBox(height: OpulentSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                OpulentChoiceChip(
                  text: 'UK 8',
                  selected: true,
                  onSelected: (value) {},
                ),
                OpulentChoiceChip(
                  text: 'UK 9',
                  selected: false,
                  onSelected: (value) {},
                ),
                OpulentChoiceChip(
                  text: 'UK 10',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
