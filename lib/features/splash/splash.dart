import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/functions/navigator.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/features/main/main_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      pushWithReplacment(context, MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.PrimaryColor,
      body: Center(child: SvgPicture.asset(AppImages.logoSvg, width: 276.42, height: 68.61)),
    );
  }
}
