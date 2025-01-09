import 'package:flutter/material.dart';
import 'package:mcaflex/screens/splash_screen.dart';
import 'package:mcaflex/utils/custom_themes/theme_util.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,

      // title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}