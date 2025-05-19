import 'package:connect_with_people_app/data/repositories/authentication/authentication_repository.dart';
import 'package:connect_with_people_app/data/repositories/user/user_repository.dart';
import 'package:connect_with_people_app/features/authentication/screens/signup/verify_email.dart';
import 'package:connect_with_people_app/features/personalization/models/user_model.dart';
import 'package:connect_with_people_app/utils/constants/image_strings.dart';
import 'package:connect_with_people_app/utils/helpers/network_manager.dart';
import 'package:connect_with_people_app/utils/popups/full_screen_loader.dart';
import 'package:connect_with_people_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables
  final hidePassword = true.obs; // Observable for hiding/showing password
  final privacyPolicy = true.obs;
  final email = TextEditingController(); // controller for email input
  final firstName = TextEditingController(); // controller for first name input
  final lastName = TextEditingController(); // controller for last name input
  final username = TextEditingController(); // controller for username input
  final password = TextEditingController(); // controller for password input
  final phoneNumber = TextEditingController(); // controller for phine No input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // Form Key for form validation

  /// -- SignUp

  void signup() async {
    try {
      // Start loading
      CFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        CImages.processing,
      );

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove Loader
        CFullScreenLoader.stopLoading();

        return;
      }

      // Form Validation
      if (!signupFormKey.currentState!.validate()) {
        // Remove Loader
        CFullScreenLoader.stopLoading();
        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        CLoaders.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must have to read and accept the Privacy Policy & Terms of Use',
        );
        return;
      }

      // Register user in the Firebase Authentication & Save user in the Firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );

      // Save Authenticated user data in the Firebase
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Remove Loader
      CFullScreenLoader.stopLoading();

      // Show Success Message
      CLoaders.successSnackBar(
        title: 'Congratulations',
        message: 'Your account has been created! Verify email to continue',
      );

      // Move to Verify Email Screen
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      // Remove Loader
      CFullScreenLoader.stopLoading();

      // Show some Generic Error to the user
      CLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
