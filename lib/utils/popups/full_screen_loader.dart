import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/utils/constants/colors.dart';
import 'package:opulent/utils/helpers/helper_functions.dart';
import 'package:opulent/utils/loaders/animation_loader.dart';

class OpulentFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: OpulentHelperFunctions.isDarkMode(Get.context!)
              ? OpulentColors.dark
              : OpulentColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250),
              OpulentAnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
