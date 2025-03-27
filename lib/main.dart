import 'package:connect_with_people_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import 'app.dart';

/// --------Entry point of flutter App----
Future<void> main() async {
  // todo: Add widgets binding
  // todo: Init local storage
  // todo: Await native splash
  // todo: Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  // todo: Initialize Authentication

  runApp(const CApp());
}
