import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/appbar/appbar.dart';
import 'package:opulent/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/text_strings.dart';

class OpulentHomeAppBar extends StatelessWidget {
  const OpulentHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OpulentAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            OpulentTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: OpulentColors.grey,
                ),
          ),
          Text(
            OpulentTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                  color: OpulentColors.white,
                ),
          )
        ],
      ),
      actions: [
        OpulentCartCounterIcon(
          onPressed: () {},
          iconColor: OpulentColors.white,
        ),
      ],
    );
  }
}
