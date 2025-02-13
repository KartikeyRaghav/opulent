import 'package:flutter/widgets.dart';
import 'package:opulent/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/device/device_utility.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: OpulentDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: OpulentSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? OpulentColors.light : OpulentColors.dark,
          dotHeight: 6,
        ),
        count: 3,
      ),
    );
  }
}
