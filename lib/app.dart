import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:opulent/features/authentication/screens/onboarding/onboarding.dart';
import 'package:opulent/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: OpulentAppTheme.lightTheme,
      darkTheme: OpulentAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}
