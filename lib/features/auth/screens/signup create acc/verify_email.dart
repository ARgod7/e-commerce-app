import 'package:ecomapp/features/auth/screens/login/login.dart';
import 'package:ecomapp/features/auth/screens/signup%20create%20acc/success_screen.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(Icons.close))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ASizes.defaultSpace),
          child: Column(
            children: [
              //image
              const Image(
                image: AssetImage(AImages.verifyEmail),
              ),
              //title and sub title
              Text(
                'Verify your email address!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                'abc@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                'Congrats! Now Email verification is pending. We have sent you an email, Head over there and verify your email address and dive into wide possibilies of categories to shop from.',
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwSections),

              // button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: AImages.verifiedEmail,
                          title: 'Sucessfully Created Account!',
                          subtitle:
                              'We can not wait for you to check out the products and discounts we have for you. Happy Shopping!',
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text('Continue')),
              ),
              const SizedBox(height: ASizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text('Resend email')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
