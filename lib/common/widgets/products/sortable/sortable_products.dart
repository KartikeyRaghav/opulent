import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/layout/grid_layout.dart';
import 'package:opulent/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentSortableProducts extends StatelessWidget {
  const OpulentSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ]
              .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
        ),
        SizedBox(height: OpulentSizes.spaceBtwSections),
        OpulentGridLayout(
          itemCount: 4,
          itemBuilder: (_, index) => OpulentProductCardVertical(),
        ),
      ],
    );
  }
}
