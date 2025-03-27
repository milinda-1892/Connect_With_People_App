import 'package:connect_with_people_app/common/widgets/login_signup/form_divider.dart';
import 'package:connect_with_people_app/common/widgets/login_signup/social_buttons.dart';
import 'package:connect_with_people_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                CTexts.singupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// Form
              CSignupForm(),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// Divider
              CFormDivider(dividerText: CTexts.orSignInWith.capitalize!),
              const SizedBox(height: CSizes.spaceBtwSections),

              /// Social Buttons
              const CSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
