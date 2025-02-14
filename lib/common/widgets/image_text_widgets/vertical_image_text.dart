import 'package:flutter/material.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentVerticalImageText extends StatelessWidget {
  const OpulentVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = OpulentColors.white,
    this.backgroundColor = OpulentColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          right: OpulentSizes.spaceBtwItems,
        ),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: EdgeInsets.all(OpulentSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ??
                    (dark ? OpulentColors.black : OpulentColors.white),
                borderRadius: BorderRadius.circular(56),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? OpulentColors.light : OpulentColors.dark,
                ),
              ),
            ),
            SizedBox(
              height: OpulentSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
