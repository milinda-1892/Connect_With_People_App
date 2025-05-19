import 'package:connect_with_people_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:connect_with_people_app/features/authentication/screens/signup/widgets/terms_and_conditions.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/constants/text_strings.dart';
import 'package:connect_with_people_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CSignupForm extends StatelessWidget {
  const CSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    //final _formKey = GlobalKey<FormState>();
    return Form(
      key: controller.signupFormKey,
      //key: _formKey,
      child: Column(
        children: [
          /// First Name and Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator:
                      (value) =>
                          CValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: CSizes.spaceBtwInputFields),

              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator:
                      (value) =>
                          CValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: CTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            controller: controller.username,
            validator:
                (value) => CValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: CTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          ///Email
          TextFormField(
            controller: controller.email,
            validator: (value) => CValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: CTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => CValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: CTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          ///Password
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) => CValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: CTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed:
                      () =>
                          controller.hidePassword.value =
                              !controller.hidePassword.value,
                  icon: Icon(
                    controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: CSizes.spaceBtwInputFields),

          /// Terms and Conditions Checkbox
          const CTermsAndConditions(),
          const SizedBox(height: CSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),

              /*  onPressed: () {
                if (_formKey.currentState!.validate()) {
                  SignupController.instance.signup(
                    controller.email.text.trim(),
                    controller.password.text.trim(),
                  );
                }
              },*/
              child: const Text(CTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
