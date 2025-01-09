import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:intl/intl.dart';

class KHelperfunction
{
  static void navigateToScreen (BuildContext context, Widget screen) {
    Navigator.push
    (
      context,
      MaterialPageRoute (builder: (_) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}... ' ;
    }
  }

  static bool isDarkMode (BuildContext context) {
    return Theme. of (context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date, {String format = 'dd MM yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeduplicates<T>(List<T> list) {
    return list.toSet().toList();
  }
}