import 'package:flutter/material.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/features/cart/widgets/cart_product.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int count = 1;
  double price = 4.99;

  int countegg = 1;
  double priceegg = 0.497;

  int countbanana = 1;
  double pricebanana = 3.00;

  int countginger = 1;
  double priceginger = 2.99;

  double get total => (count * price) + (countegg * priceegg) + (countbanana * pricebanana) + (countginger * priceginger);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 32.17),
            Divider(color: Color(0xFFE2E2E2)),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      CartProduct(
                        name: 'Bell Pepper Red',
                        quantity: '1kg, Price',
                        image: AppImages.pepperPng,
                        count: count,
                        price: price,
                        onAdd: () {
                          setState(() {
                            count++;
                            price = 4.99 * count;
                          });
                        },
                        onRemove: () {
                          if (count > 1) {
                            setState(() {
                              count--;
                              price = 4.99 * count;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      CartProduct(
                        name: 'Egg Chicken Red',
                        quantity: '1pcs, Price',
                        image: AppImages.eggPng,
                        count: countegg,
                        price: priceegg,
                        onAdd: () {
                          setState(() {
                            countegg++;
                            priceegg = 0.497 * countegg;
                          });
                        },
                        onRemove: () {
                          if (countegg > 1) {
                            setState(() {
                              countegg--;
                              priceegg = 0.497 * countegg;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      CartProduct(
                        name: 'Organic Bananas',
                        quantity: '1kg, Price',
                        image: AppImages.bananaPng,
                        count: countbanana,
                        price: pricebanana,
                        onAdd: () {
                          setState(() {
                            countbanana++;
                            pricebanana = 3.00 * countbanana;
                          });
                        },
                        onRemove: () {
                          if (countbanana > 1) {
                            setState(() {
                              countbanana--;
                              pricebanana = 3.00 * countbanana;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 10),
                      CartProduct(
                        name: 'Ginger',
                        quantity: '250gm, Price',
                        image: AppImages.gingerPng,
                        count: countginger,
                        price: priceginger,
                        onAdd: () {
                          setState(() {
                            countginger++;
                            priceginger = 2.99 * countginger;
                          });
                        },
                        onRemove: () {
                          if (countginger > 1) {
                            setState(() {
                              countginger--;
                              priceginger = 2.99 * countginger;
                            });
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Material(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(19),
                child: InkWell(
                  borderRadius: BorderRadius.circular(19),
                  onTap: () {},
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(color: AppColor.PrimaryColor, borderRadius: BorderRadius.circular(19)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 114),
                          child: Text('Go to Checkout', style: AppTextStyle.elevatedButtonText),
                        ),
                        SizedBox(width: 50),
                        Text(
                          '\$' + total.toStringAsFixed(2),
                          style: TextStyle(color: AppColor.whiteColor, fontSize: 12, fontWeight: FontWeight.w600, backgroundColor: Color(0xFF489E67)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
