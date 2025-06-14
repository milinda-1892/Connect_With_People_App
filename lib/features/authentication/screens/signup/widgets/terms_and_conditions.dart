import 'package:connect_with_people_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:connect_with_people_app/utils/constants/colors.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/constants/text_strings.dart';
import 'package:connect_with_people_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CTermsAndConditions extends StatelessWidget {
  const CTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = CHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.privacyPolicy.value,
              onChanged:
                  (value) =>
                      controller.privacyPolicy.value =
                          !controller.privacyPolicy.value,
            ),
          ),
        ),
        const SizedBox(width: CSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${CTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${CTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? CColors.white : CColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? CColors.white : CColors.primary,
                ),
              ),

              TextSpan(
                text: '${CTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${CTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? CColors.white : CColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? CColors.white : CColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
