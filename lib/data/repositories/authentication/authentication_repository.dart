import 'package:connect_with_people_app/execptions.dart';
import 'package:connect_with_people_app/features/authentication/screens/login/login.dart';
import 'package:connect_with_people_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  /// Variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// Called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  /// Function to show relevent screen
  screenRedirect() async {
    // Local Storage
    if (kDebugMode) {
      print('==============GET STORAGE===============');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  //---------Email & Password Sign in----------------

  /// [Email Authentication]- sign in

  /// [Email Authentication]- Register
  Future<UserCredential> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw CFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw CFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const CFormatException();
    } on PlatformException catch (e) {
      throw CPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  /// [ReAuthenticate] - Reauthenticate user

  /// [Email Verification] - Mail Verification

  /// [Email Authentication]- Forget Password

  //---------Social Sign In------------------

  /// [GoogleAuthentication] - Google

  /// [FacebookAuthentication] - Facebook

  //------------end social sign in---------------------

  /// [Logout User] - Valid for any authentication

  /// Delete User - Remove user Auth and Firestore Account
}
