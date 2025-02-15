import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/texts/brand_title_text.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/enums.dart';
import 'package:opulent/utils/constants/sizes.dart';

class OpulentBrandTitleWithVerifiedIcon extends StatelessWidget {
  const OpulentBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = OpulentColors.primary,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Row(
            children: [
              OpulentBrandTitleText(
                title: title,
                color: textColor,
                maxLines: maxLines,
                textAlign: textAlign,
                brandTextSize: brandTextSize,
              ),
              SizedBox(width: OpulentSizes.xs),
              Icon(
                Iconsax.verify5,
                color: iconColor,
                size: OpulentSizes.iconXs,
              )
            ],
          ),
        ),
      ],
    );
  }
}
