import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:opulent/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:opulent/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:opulent/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:opulent/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: OpulentImages.onBoardingImage1,
                title: OpulentTexts.onBoardingTitle1,
                subtitle: OpulentTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: OpulentImages.onBoardingImage2,
                title: OpulentTexts.onBoardingTitle2,
                subtitle: OpulentTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: OpulentImages.onBoardingImage3,
                title: OpulentTexts.onBoardingTitle3,
                subtitle: OpulentTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingDotNavigation(),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
