import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/styles/spacing_styles.dart';
import 'package:opulent/common/widgets/login_signup/form_divider.dart';
import 'package:opulent/common/widgets/login_signup/social_button.dart';
import 'package:opulent/features/authentication/screens/login/widgets/login_form.dart';
import 'package:opulent/features/authentication/screens/login/widgets/login_header.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OpulentSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              OpulentLoginHeader(dark: dark),
              OpulentLoginForm(),
              OpulentFormDivider(
                dark: dark,
                text: OpulentTexts.orSignInWith.capitalize!,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              OpulentSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
