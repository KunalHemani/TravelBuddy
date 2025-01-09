import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mcaflex/MyApp.dart';
import 'package:mcaflex/firebase_options.dart';
import 'package:mcaflex/screens/splash_screen.dart';
import 'package:mcaflex/utils/custom_themes/theme_util.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();  // Ensure Flutter bindings are initialized

  // Initialize Firebase
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform);

  // Initialize Authentication (if necessary)
  runApp(const MyApp());
}






// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mcaflex/MyApp.dart';
// import 'package:mcaflex/firebase%20features/authentication_repository.dart';
// import 'package:mcaflex/firebase_options.dart';
//
// Future<void> main() async {
//
//   // Todo: Initialize Firebase
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
//       (Firebase value) => Get.put(AuthenticationRepository()),
//   );
//
//   // Todo: Initialize Authentication
//   runApp(const MyApp());
// }