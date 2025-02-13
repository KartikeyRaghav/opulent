import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentSocialButtons extends StatelessWidget {
  const OpulentSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: OpulentColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: OpulentSizes.iconMd,
              height: OpulentSizes.iconMd,
              image: AssetImage(OpulentImages.google),
            ),
          ),
        ),
        SizedBox(width: OpulentSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: OpulentColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: OpulentSizes.iconMd,
              height: OpulentSizes.iconMd,
              image: AssetImage(OpulentImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
