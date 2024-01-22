import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeTheme extends GetxController {
  // bool _darkModeEnabled = false;
  // ThemeMode _themeMode = ThemeMode.system;
  //   bool isDarkMode = Theme.of().brightness == Brightness.dark;
  void changeMode() {
    Get.theme.brightness == Brightness.dark
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
  }
}
