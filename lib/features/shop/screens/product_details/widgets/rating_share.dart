import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentRatingAndShare extends StatelessWidget {
  const OpulentRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Iconsax.star5,
              color: Colors.amber,
              size: 24,
            ),
            SizedBox(width: OpulentSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '5.0',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(text: ' (199)')
                ],
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            size: OpulentSizes.iconMd,
          ),
        ),
      ],
    );
  }
}
