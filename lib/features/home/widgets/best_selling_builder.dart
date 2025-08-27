import 'package:flutter/material.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/features/home/models/product_best.dart';
import 'package:nectar/features/home/models/product_model.dart';
import 'package:nectar/features/home/widgets/product_card_best.dart';

class BestSellingBuilder extends StatelessWidget {
  const BestSellingBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Best Selling', style: AppTextStyle.mainText),
            TextButton(
              onPressed: () {},
              child: Text('See all', style: AppTextStyle.seeText),
            ),
          ],
        ),

        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, mainAxisExtent: 248),
          itemBuilder: (context, index) {
            return ProductCardBest(model: productBest[index]);
          },
          itemCount: product.length,
        ),
      ],
    );
  }
}
