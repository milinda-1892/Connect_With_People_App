import 'package:connect_with_people_app/utils/constants/colors.dart';
import 'package:connect_with_people_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// A widget for displaying an animated loading indicator with optional text and action button
class CAnimationLoaderWidget extends StatelessWidget {
  /// Defualt constructor for the CAnimationLoaderWidget.
  ///
  /// Parameters:
  ///  - text: The text to be dispalyed below the animation.
  ///  - animation: The path to the Lottie animation file.
  ///  - showAction: Wheather to show an action file.
  ///  - actionText: The text to be displayed on the action button.
  ///  - onActionPressed: Callback function to be executed when action button is pressed
  const CAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  });

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            animation,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.contain,
          ), // Display Lottie animation
          const SizedBox(height: CSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: CSizes.defaultSpace),
          showAction
              ? SizedBox(
                width: 250,
                child: OutlinedButton(
                  onPressed: onActionPressed,
                  style: OutlinedButton.styleFrom(
                    backgroundColor: CColors.dark,
                  ),
                  child: Text(
                    actionText!,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium!.apply(color: CColors.light),
                  ),
                ),
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}
