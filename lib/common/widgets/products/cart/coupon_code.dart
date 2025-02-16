import 'package:flutter/material.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentCouponCode extends StatelessWidget {
  const OpulentCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return OpulentRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? OpulentColors.dark : OpulentColors.white,
      padding: EdgeInsets.only(
        top: OpulentSizes.sm,
        bottom: OpulentSizes.sm,
        right: OpulentSizes.sm,
        left: OpulentSizes.md,
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Have a promo code? Enter Here',
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? OpulentColors.white.withOpacity(0.5)
                    : OpulentColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
