import 'package:flutter/material.dart';
import 'package:nectar/core/util/color.dart';

class FavoriteProduct extends StatelessWidget {
  const FavoriteProduct({super.key, required this.price, required this.image, required this.name, required this.quantity});

  final double price;
  final String image;
  final String name;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(image, width: 54, height: 54),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: AppColor.blackColor, fontSize: 16, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 7),
                Text(
                  quantity,
                  style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  '\$' + price.toStringAsFixed(2),
                  style: TextStyle(color: AppColor.blackColor, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward_ios, color: AppColor.blackColor, size: 20),
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        Divider(),
      ],
    );
  }
}
