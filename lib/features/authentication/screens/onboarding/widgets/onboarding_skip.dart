import 'package:connect_with_people_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: CDeviceUtils.getAppBarHeight(),
      right: CSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        style: TextButton.styleFrom(foregroundColor: Colors.blue),
        child: const Text('Skip'),
      ),
    );
  }
}
