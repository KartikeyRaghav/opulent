import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:opulent/features/authentication/controllers/signup/signup_controller.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';
import 'package:opulent/utils/validators/validation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  controller: controller.firstName,
                  validator: (value) =>
                      OpulentValidator.validateEmptyText('First Name', value),
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
                  controller: controller.lastName,
                  validator: (value) =>
                      OpulentValidator.validateEmptyText('Last Name', value),
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
            controller: controller.username,
            validator: (value) =>
                OpulentValidator.validateEmptyText('Username', value),
            decoration: InputDecoration(
              labelText: OpulentTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.email,
            validator: (value) => OpulentValidator.validateEmail(value),
            decoration: InputDecoration(
              labelText: OpulentTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => OpulentValidator.validatePhoneNumber(value),
            decoration: InputDecoration(
              labelText: OpulentTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwInputFields),
          Obx(
            () => TextFormField(
              obscureText: controller.hidePassword.value,
              controller: controller.password,
              validator: (value) => OpulentValidator.validatePassword(value),
              decoration: InputDecoration(
                labelText: OpulentTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(controller.hidePassword.value
                      ? Iconsax.eye_slash
                      : Iconsax.eye),
                ),
              ),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwSections),
          Row(
            children: [
              SizedBox(
                child: Obx(
                  () => Checkbox(
                      value: controller.privacyPolicy.value,
                      onChanged: (value) => controller.privacyPolicy.value =
                          !controller.privacyPolicy.value),
                ),
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
              onPressed: () => controller.signup(),
              child: Text(OpulentTexts.createAccount),
            ),
          ),
          SizedBox(height: OpulentSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
