import 'package:flutter/material.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/features/home/models/product_model.dart';
import 'package:nectar/features/home/widgets/product_card.dart';

class ExclusiveOfferBuilder extends StatelessWidget {
  const ExclusiveOfferBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Exclusive Offer', style: AppTextStyle.mainText),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: AppTextStyle.seeText),
            ),
          ],
        ),
        SizedBox(height: 12.95),
        SizedBox(
          height: 248,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCard(model: product[index]);
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 6);
            },
            itemCount: product.length,
          ),
        ),
      ],
    );
  }
}
