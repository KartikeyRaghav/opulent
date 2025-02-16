import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class OpulentSingleAddress extends StatelessWidget {
  const OpulentSingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    return OpulentRoundedContainer(
      width: double.infinity,
      padding: EdgeInsets.all(OpulentSizes.md),
      showBorder: true,
      backgroundColor: selectedAddress
          ? OpulentColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? OpulentColors.darkerGrey
              : OpulentColors.grey,
      margin: EdgeInsets.only(bottom: OpulentSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? OpulentColors.light
                      : OpulentColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kartikey Raghav',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: OpulentSizes.sm / 2),
              SizedBox(height: OpulentSizes.sm / 2),
              Text(
                '+91-9711249305',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: OpulentSizes.sm / 2),
              Text(
                '402-A1, VSB, IIT Indore, Simrol, Madhya Pradesh - 453552',
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
