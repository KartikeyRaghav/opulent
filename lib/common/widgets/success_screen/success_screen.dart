import 'package:flutter/material.dart';
import 'package:opulent/common/styles/spacing_styles.dart';
import 'package:opulent/utils/constants/sizes.dart';
import 'package:opulent/utils/constants/text_strings.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: OpulentSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: OpulentHelperFunctions.screenWidth() * 0.6,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: OpulentSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: OpulentSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(OpulentTexts.oContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
