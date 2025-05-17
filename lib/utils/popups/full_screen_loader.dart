import 'package:connect_with_people_app/common/widgets/loaders/animation_loader.dart';
import 'package:connect_with_people_app/utils/constants/colors.dart';
import 'package:connect_with_people_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A utility class for managing a full-screen loading dialog.
class CFullScreenLoader {
  /// open a full - screen loading dialog with a given text and animation
  /// This method doesn't return anything
  ///
  /// parameters
  ///  - text: The text to be displayed in the loading dialog.
  ///  - animation: The Lottie animation to be showm.
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context:
          Get.overlayContext!, // use Get.overlayContext for overlay dialogs
      barrierDismissible:
          false, // The dialog can't be dismissed by tapping outside it
      builder:
          (_) => PopScope(
            canPop: false, // Disable popping with the back button
            child: Container(
              color:
                  CHelperFunctions.isDarkMode(Get.context!)
                      ? CColors.dark
                      : CColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 250), // Adjust the spacing as needed
                  CAnimationLoaderWidget(text: text, animation: animation),
                ],
              ),
            ),
          ),
    );
  }

  /// Stop the currently open loading dialog.
  /// This method doesen't return anything.
  static stopLoading() {
    Navigator.of(
      Get.overlayContext!,
    ).pop(); // Close the dialog using the Navigator
  }
}
