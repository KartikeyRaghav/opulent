import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/common/widgets/success_screen/success_screen.dart';
import 'package:opulent/features/authentication/screens/login/login.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OpulentSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: AssetImage(OpulentImages.deliveredEmailIllustration),
                width: OpulentHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              Text(
                OpulentTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              Text(
                'abc@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              Text(
                OpulentTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: OpulentImages.staticSuccessIllustration,
                      title: OpulentTexts.yourAccountCreatedTitle,
                      subTitle: OpulentTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(() => LoginScreen()),
                    ),
                  ),
                  child: Text(OpulentTexts.oContinue),
                ),
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(OpulentTexts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
