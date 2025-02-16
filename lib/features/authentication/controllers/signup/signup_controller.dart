import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opulent/utils/constants/image_strings.dart';
import 'package:opulent/utils/helpers/network_manager.dart';
import 'package:opulent/utils/popups/full_screen_loader.dart';
import 'package:opulent/utils/popups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      OpulentFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        OpulentImages.animalIcon,
      );

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      if (!signupFormKey.currentState!.validate()) return;

      if (!privacyPolicy.value) {
        OpulentLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create an account, you must have to read and accept the Privacy Policy & Terms of Use.');
        return;
      }
    } catch (e) {
      OpulentLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      OpulentFullScreenLoader.stopLoading();
    }
  }
}
