import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  static ThemeController get to {
    return Get.find();
  }

  RxBool isDarkTheme = false.obs;

  final storage = GetStorage();

  ThemeMode get theme => isDarkTheme.value ? ThemeMode.dark : ThemeMode.light;

  @override
  void onInit() {
    super.onInit();
    _getCurrentTheme();
  }

  _getCurrentTheme() {
    isDarkTheme.value = storage.read('isDarkMode') ?? false;
  }

  void switchTheme(bool isDark) {
    isDarkTheme.value = isDark;
    _updateThemeSetting(isDark);
    Get.changeThemeMode(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  void _updateThemeSetting(bool boolData) {
    storage.write('isDarkMode', boolData);
  }
}
