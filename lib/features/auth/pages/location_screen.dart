import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/core/widgets/custom_main_button.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final List<String> addresses = ['Egypt, Cairo', 'Egypt, Alexandria', 'Egypt, Giza', 'Egypt, Qalyubia', 'Egypt, Port Said', 'Egypt, Suez', 'Egypt, Dakahlia', 'Egypt, Sharqia', 'Egypt, Kafr El Sheikh', 'Egypt, Gharbia', 'Egypt, Monufia', 'Egypt, Beheira', 'Egypt, Ismailia', 'Egypt, Giza', 'Egypt, Beni Suef', 'Egypt, Fayoum', 'Egypt, Minya', 'Egypt, Assiut', 'Egypt, Sohag', 'Egypt, Qena', 'Egypt, Luxor', 'Egypt, Aswan', 'Egypt, Red Sea', 'Egypt, New Valley', 'Egypt, Matruh', 'Egypt, North Sinai', 'Egypt, South Sinai'];
  String? selectAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.locationSvg, width: 224.69, height: 170.69),
              SizedBox(height: 40),
              Text('Select Your Location', style: AppTextStyle.mainText),
              Text('Swithch on your location to stay in tune with\n\t           what’s happening in your area', style: AppTextStyle.subText),
              SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      value: selectAddress,
                      hint: const Text('Select Address'),
                      items: addresses.map((address) {
                        return DropdownMenuItem(value: address, child: Text(address));
                      }).toList(),
                      onChanged: (val) {
                        setState(() {
                          selectAddress = val;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      padding: const EdgeInsetsDirectional.symmetric(horizontal: 2, vertical: 2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              CustomMainButton(title: 'Submit', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
