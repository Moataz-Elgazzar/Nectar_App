import 'package:flutter/material.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/core/util/color.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({super.key, required this.title, this.height = 55, this.width = double.infinity, required this.onPressed});

  final String title;
  final double height;
  final double width;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.PrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(19)),
        ),
        onPressed: onPressed,
        child: Text(title, style: AppTextStyle.elevatedButtonText),
      ),
    );
  }
}
