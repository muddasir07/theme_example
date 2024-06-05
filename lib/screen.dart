import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:theme_app/theme_controller.dart';
import 'package:theme_app/theme_toggle_button.dart';
import 'package:get_storage/get_storage.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  ThemeController cont = Get.put(ThemeController());
  final storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a demo for light and dark mode.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: storage.read('isDarkMode') == true ? const Color.fromARGB(255, 199, 52, 52) : const Color.fromARGB(255, 40, 7, 231), // Use secondary color
              ),
            ),
            const SizedBox(height: 20),
            ThemeToggleButton(),
          ],
        ),
      ),
    );
  }
}
