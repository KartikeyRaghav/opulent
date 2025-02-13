import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/login_signup/form_divider.dart';
import 'package:opulent/common/widgets/login_signup/social_button.dart';
import 'package:opulent/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OpulentHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                OpulentTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              SignUpForm(dark: dark),
              OpulentFormDivider(
                dark: dark,
                text: OpulentTexts.orSignUpWith.capitalize!,
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
