import 'package:flutter/material.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/core/widgets/custom_main_button.dart';
import 'package:nectar/features/favorite/widget/favorite_product.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Favorurite',
              style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 32.17),
            Divider(color: Color(0xFFE2E2E2)),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  FavoriteProduct(name: 'Sprite Can', quantity: '325ml, Price', image: AppImages.spritePng, price: 1.50),
                  SizedBox(height: 10),
                  FavoriteProduct(name: 'Diet Coke', quantity: '355ml, Price', image: AppImages.cokePng, price: 1.99),
                  SizedBox(height: 10),
                  FavoriteProduct(name: 'Apple & Grape Juice', quantity: '2L, Price', image: AppImages.juicePng, price: 15.50),
                  SizedBox(height: 10),
                  FavoriteProduct(name: 'Coca Cola Can', quantity: '325ml, Price', image: AppImages.cocaPng, price: 4.99),
                  SizedBox(height: 10),
                  FavoriteProduct(name: 'Pepsi Can', quantity: '330ml, Price', image: AppImages.pepsiPng, price: 4.99),
                  SizedBox(height: 30),
                  CustomMainButton(title: 'Add All To Cart', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
