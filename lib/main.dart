import 'package:flutter/material.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/features/splash/splash.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.whiteColor,
        appBarTheme: AppBarTheme(backgroundColor: AppColor.whiteColor),
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
