import 'package:connect_with_people_app/data/repositories/authentication/authentication_repository.dart';
import 'package:connect_with_people_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/instance_manager.dart';
import 'package:get_storage/get_storage.dart';

import 'app.dart';

/// --------Entry point of flutter App----
Future<void> main() async {
  // Add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  // Init local storage
  await GetStorage.init();

  // Await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // todo: Initialize Authentication

  runApp(const CApp());
}
