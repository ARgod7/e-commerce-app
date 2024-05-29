import 'package:ecomapp/common/widgets/circular_logo_button.dart';
import 'package:ecomapp/common/widgets/divider_w_title.dart';
import 'package:ecomapp/common/widgets/login_header.dart';
import 'package:ecomapp/features/auth/screens/login/widgets/login_form.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: ASizes.appBarHeight,
            left: ASizes.defaultSpace,
            right: ASizes.defaultSpace,
            bottom: ASizes.defaultSpace,
          ),
          child: Column(
            children: [
              // Header with logo and subtitle
              LoginHeader(),

              // Form
              LoginForm(),

              // Divider
              DividerWithTitle(dividerText: 'Or Sign In with'),

              SizedBox(height: ASizes.spaceBtwSections),

              // Login using socials
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularLogoButton(logo: AImages.google),
                  SizedBox(width: ASizes.spaceBtwItems),
                  CircularLogoButton(logo: AImages.facebook),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
