import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mcaflex/MyApp.dart';
import 'package:mcaflex/firebase_options.dart';
import 'package:mcaflex/screens/splash_screen.dart';
import 'package:mcaflex/utils/custom_themes/theme_util.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}






// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();  // Ensure Flutter bindings are initialized
//
//   // Initialize Firebase
//   await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform);
//
//   // Initialize Authentication (if necessary)
//   runApp(const MyApp());
// }