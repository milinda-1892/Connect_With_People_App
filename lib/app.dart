import 'package:connect_with_people_app/bindings/general_bindings.dart';
import 'package:connect_with_people_app/utils/constants/colors.dart';
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
      initialBinding: GeneralBindings(),
      debugShowCheckedModeBanner: false,

      /// Show  Loader or Circular progress indicator meanwhile Authentication Repository is deciding to show relevant screen
      home: const Scaffold(
        backgroundColor: CColors.primary,
        body: Center(child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}
