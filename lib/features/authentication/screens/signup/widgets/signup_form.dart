import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/features/authentication/screens/signup/verif_email.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: OpulentTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(width: OpulentSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    labelText: OpulentTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: OpulentTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: OpulentTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: OpulentTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: OpulentTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwSections),
          Row(
            children: [
              SizedBox(
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              SizedBox(width: OpulentSizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '${OpulentTexts.iAgreeTo} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        OpulentTexts.privacyPolicy,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark
                                  ? OpulentColors.white
                                  : OpulentColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark
                                  ? OpulentColors.white
                                  : OpulentColors.primary,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '${OpulentTexts.and} ',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        OpulentTexts.termsOfUse,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark
                                  ? OpulentColors.white
                                  : OpulentColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark
                                  ? OpulentColors.white
                                  : OpulentColors.primary,
                            ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: OpulentSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(VerifyEmailScreen()),
              child: Text(OpulentTexts.createAccount),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
