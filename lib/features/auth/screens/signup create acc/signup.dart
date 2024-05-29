import 'package:ecomapp/common/widgets/circular_logo_button.dart';
import 'package:ecomapp/common/widgets/divider_w_title.dart';
import 'package:ecomapp/features/auth/screens/signup%20create%20acc/widgets/signup_form.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text("Let's create your account",
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: ASizes.spaceBtwSections),

              const SignUpForm(),

              const SizedBox(height: ASizes.spaceBtwSections),

              const DividerWithTitle(dividerText: 'Or Sign In with'),

              const SizedBox(height: ASizes.spaceBtwSections),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularLogoButton(logo: AImages.google),
                  SizedBox(width: ASizes.spaceBtwItems),
                  CircularLogoButton(logo: AImages.facebook),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
