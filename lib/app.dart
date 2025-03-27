import 'package:connect_with_people_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:connect_with_people_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

///--Use this class to setup themes, initial binding, any animations and much more
class CApp extends StatelessWidget {
  const CApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
