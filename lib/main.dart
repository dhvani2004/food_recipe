import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Page/splash_screen.dart';
import 'project_spicific/buttomnavigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: "PublicSans"
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample());
  }
}
