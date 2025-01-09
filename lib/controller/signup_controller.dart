// signup_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  /// Variables

  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // Perform Signup Logic Here
      if (signupFormkey.currentState!.validate()) {
        // Add further signup implementation, such as API calls
        Get.snackbar("Success", "Signup Completed");
      } else {
        Get.snackbar("Error", "Please correct the errors in the form.");
      }
    } catch (e) {
      Get.snackbar("Error", "An error occurred during signup: $e");
    }
  }
}