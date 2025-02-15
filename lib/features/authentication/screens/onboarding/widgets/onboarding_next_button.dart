import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: OpulentSizes.defaultSpace,
      bottom: OpulentDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(), backgroundColor: OpulentColors.primary),
        child: Icon(
          Iconsax.arrow_right_3,
          color: OpulentColors.white,
        ),
      ),
    );
  }
}
