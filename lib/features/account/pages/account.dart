import 'package:flutter/material.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/util/color.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 69),
            child: Row(
              children: [
                Image.asset(AppImages.personPng, width: 63, height: 64),
                SizedBox(width: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Afsar Hossen',
                          style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w400),
                        ),
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit), color: AppColor.PrimaryColor),
                      ],
                    ),
                    Text(
                      'Imshuvo97@gmail.com',
                      style: TextStyle(color: Color(0xFF7C7C7C), fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.shopping_bag_outlined, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'Orders',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 240),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.badge, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'My Details',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 205),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'Delivery Address',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 150),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.credit_card, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'Payment Methods',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 140),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.discount_outlined, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'Promo Cord',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 195),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.notifications_none, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'Notifecations',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 180),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.help_outline, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'Help',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 260),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Icon(Icons.error_outline, color: AppColor.blackColor, size: 25),
                SizedBox(width: 20),
                Text(
                  'About',
                  style: TextStyle(color: AppColor.blackColor, fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 250),
                Expanded(child: Icon(Icons.arrow_forward_ios, color: AppColor.blackColor)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              height: 67,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFF2F3F2), borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Icon(Icons.logout, color: AppColor.PrimaryColor),
                    SizedBox(width: 100),
                    Text(
                      'Log Out',
                      style: TextStyle(color: AppColor.PrimaryColor, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
