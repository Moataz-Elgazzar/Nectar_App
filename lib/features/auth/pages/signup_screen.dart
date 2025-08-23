import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar/core/constants/app_images.dart';
import 'package:nectar/core/functions/navigator.dart';
import 'package:nectar/core/functions/validation.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/core/util/color.dart';
import 'package:nectar/core/widgets/custom_main_button.dart';
import 'package:nectar/core/widgets/custom_password_widget.dart';
import 'package:nectar/core/widgets/custom_text_widget.dart';
import 'package:nectar/features/auth/pages/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [SvgPicture.asset(AppImages.cartimageSvg)]),
                  SizedBox(height: 70),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign Up', style: AppTextStyle.mainText),
                      Text('Enter your credentials to continue', style: AppTextStyle.subText),
                      SizedBox(height: 40),
                      CustomTextWidget(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your uername';
                          } else if (!validationUserName(value)) {
                            return 'Please enter a valid Username';
                          }
                          return null;
                        },
                        label: 'Username',
                        prefix: Icon(Icons.person, color: AppColor.PrimaryColor),
                      ),
                      SizedBox(height: 20),
                      CustomTextWidget(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          } else if (!validationEmail(value)) {
                            return 'Please enter a valid email';
                          }
                          return null;
                        },
                        label: 'Email',
                        prefix: Icon(Icons.email, color: AppColor.PrimaryColor),
                      ),
                      SizedBox(height: 20),
                      CustomPasswordWidget(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (!validationPassword(value)) {
                            return 'Password Enter valid password';
                          }
                          return null;
                        },
                        label: 'password',
                        prefix: Icon(Icons.lock, color: AppColor.PrimaryColor),
                      ),

                      SizedBox(height: 20),
                      CustomMainButton(
                        title: 'Sign Up',
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            pushWithReplacment(context, LoginScreen());
                          }
                        },
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?', style: AppTextStyle.blackText),
                          TextButton(
                            onPressed: () {
                              pushWithReplacment(context, LoginScreen());
                            },
                            child: Text('Log In', style: AppTextStyle.greenText),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
