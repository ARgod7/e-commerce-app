import 'package:ecomapp/features/auth/screens/password/reset_password.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
              Text(
                'Forget Password?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                "Don't worry! We got you. Provide us with your email and we will guide you getting back your account.",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),
              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: ASizes.spaceBtwSections * 2),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.off(() => const ResetPassword()),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
