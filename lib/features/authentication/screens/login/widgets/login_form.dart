import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/features/authentication/screens/password_configuration.dart/forgot_password.dart';
import 'package:opulent/features/authentication/screens/signup/signup.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';

class OpulentLoginForm extends StatelessWidget {
  const OpulentLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: OpulentSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: OpulentTexts.email,
              ),
            ),
            SizedBox(height: OpulentSizes.spaceBtwInputFields),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: OpulentTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: OpulentSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(OpulentTexts.rememberMe)
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => ForgotPasswordScreen()),
                  child: Text(OpulentTexts.forgetPassword),
                ),
              ],
            ),
            SizedBox(height: OpulentSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(OpulentTexts.signIn),
              ),
            ),
            SizedBox(height: OpulentSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(SignUpScreen()),
                child: Text(OpulentTexts.createAccount),
              ),
            ),
            SizedBox(height: OpulentSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
