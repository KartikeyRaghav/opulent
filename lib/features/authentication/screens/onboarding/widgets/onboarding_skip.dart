import 'package:flutter/material.dart';
import 'package:opulent/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      top: OpulentDeviceUtils.getAppBarHeight(),
      right: OpulentSizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: Text('Skip'),
      ),
    );
  }
}