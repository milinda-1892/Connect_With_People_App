import 'package:connect_with_people_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:connect_with_people_app/utils/constants/colors.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:connect_with_people_app/utils/device/device_utility.dart';
import 'package:connect_with_people_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = CHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: CDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: CSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? CColors.light : Colors.blue,
          dotHeight: 6,
        ),
      ),
    );
  }
}
