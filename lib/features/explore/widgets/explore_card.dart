import 'package:flutter/material.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/features/explore/models/explore_model.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key, required this.product});

  final ExploreModel product;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {},
        child: Container(
          width: 175,
          height: 189,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: product.color.withOpacity(0.1),
            border: Border.all(color: product.color.withOpacity(0.7)),
          ),
          child: Column(
            children: [
              Expanded(child: Image.asset(product.image, width: 111, height: 77)),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 40, right: 40),
                child: Text(
                  product.text,
                  style: TextStyle(color: AppColor.blackColor, fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
