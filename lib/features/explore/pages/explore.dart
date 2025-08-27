import 'package:flutter/material.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/core/widgets/custom_text_widget.dart';
import 'package:nectar/features/explore/models/explore_model.dart';
import 'package:nectar/features/explore/widgets/explore_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Find Products',
              style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 30),
            CustomTextWidget(prefix: Icon(Icons.search), hint: 'Search Store', filled: true, fillColor: AppColor.fillColor, border: BorderRadius.circular(15)),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, mainAxisExtent: 190),
                itemBuilder: (context, index) {
                  return ExploreCard(product: model[index]);
                },
                itemCount: model.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
