import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_app/screen.dart';
import 'package:theme_app/theme_controller.dart';
import 'package:theme_app/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeStyles.lightTheme,
      darkTheme: ThemeStyles.darkTheme,
      themeMode: _themeController.theme,
      home: HomeScreen(),
    );
  }
}
