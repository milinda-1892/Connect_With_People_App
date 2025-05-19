import 'package:connect_with_people_app/common/styles/spacing_styles.dart';
import 'package:connect_with_people_app/common/widgets/login_signup/form_divider.dart';
import 'package:connect_with_people_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:connect_with_people_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:connect_with_people_app/common/widgets/login_signup/social_buttons.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Subtitle
              const CLoginHeader(),

              // Form
              const CLoginForm(),

              /// Divider
              CFormDivider(dividerText: CTexts.orSignInWith.capitalize!),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// Footer
              const CSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
