import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connect_with_people_app/execptions.dart';
import 'package:connect_with_people_app/features/personalization/models/user_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

/// Repository class for  user-related operations.
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Function to save user data to Firestore.
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
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
}
