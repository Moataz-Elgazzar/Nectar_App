import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/core/widgets/custom_text_widget.dart';
import 'package:nectar/features/home/widgets/best_selling_builder.dart';
import 'package:nectar/features/home/widgets/exclusive_offer_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, right: 24, left: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: SvgPicture.asset(AppImages.logoSvg, colorFilter: ColorFilter.mode(AppColor.PrimaryColor, BlendMode.srcIn), width: 211, height: 56)),
            SizedBox(height: 17),
            CustomTextWidget(prefix: Icon(Icons.search), hint: 'Search Store', filled: true, fillColor: AppColor.fillColor, border: BorderRadius.circular(15)),
            SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(child: Column(children: [ExclusiveOfferBuilder(), SizedBox(height: 1), BestSellingBuilder()])),
            ),
          ],
        ),
      ),
    );
  }
}
