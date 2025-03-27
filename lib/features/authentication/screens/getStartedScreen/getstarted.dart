import 'package:connect_with_people_app/utils/constants/image_strings.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/constants/text_strings.dart';
import 'package:connect_with_people_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(CSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: CHelperFunctions.screenWidth() * 0.8,
            height: CHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(CImages.welcomeScreen),
          ),
          Text(
            CTexts.welcomeTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CSizes.spaceBtwItems),
          Text(
            CTexts.welcomeSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(CTexts.getStarted),
            ),
          ),
        ],
      ),
    );
  }
}
