import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/util/color.dart';

class CartProduct extends StatelessWidget {
  const CartProduct({super.key, required this.count, required this.price, required this.onAdd, required this.onRemove, required this.image, required this.name, required this.quantity});

  final int count;
  final double price;
  final Function() onAdd;
  final Function() onRemove;
  final String image;
  final String name;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image, width: 70, height: 65),
            SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(color: AppColor.blackColor, fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Text(
                  quantity,
                  style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Color(0xFFB3B3B3)),
                      ),
                      child: IconButton(onPressed: onRemove, icon: Icon(Icons.remove)),
                    ),
                    SizedBox(width: 9),
                    Text(
                      count.toString(),
                      style: TextStyle(color: AppColor.blackColor, fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 9),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Color(0xFFB3B3B3)),
                      ),
                      child: IconButton(
                        onPressed: onAdd,
                        icon: Icon(Icons.add, color: AppColor.PrimaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close, color: Color(0xFFB3B3B3)),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '\$' + price.toStringAsFixed(2),
                    style: TextStyle(color: AppColor.blackColor, fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Divider(),
      ],
    );
  }
}
