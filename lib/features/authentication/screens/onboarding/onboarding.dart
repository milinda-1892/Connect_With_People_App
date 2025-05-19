import 'package:connect_with_people_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:connect_with_people_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:connect_with_people_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:connect_with_people_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:connect_with_people_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:connect_with_people_app/utils/constants/image_strings.dart';
import 'package:connect_with_people_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: CImages.onBoardingImage1,
                title: CTexts.onBoardingTitle1,
                subTitle: CTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage2,
                title: CTexts.onBoardingTitle2,
                subTitle: CTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: CImages.onBoardingImage3,
                title: CTexts.onBoardingTitle3,
                subTitle: CTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
