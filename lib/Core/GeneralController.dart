import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralController extends GetxController {
//  Change Theme Mode From Light Or Dark
  void changeMode() {
    Get.theme.brightness == Brightness.dark
        ? Get.changeTheme(ThemeData.light())
        : Get.changeTheme(ThemeData.dark());
  }
}
