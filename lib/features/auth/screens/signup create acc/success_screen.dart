import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image;
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: ASizes.appBarHeight * 2,
              bottom: ASizes.defaultSpace,
              right: ASizes.defaultSpace,
              left: ASizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(image),
              ),
              //title and sub title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: ASizes.spaceBtwItems),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ASizes.spaceBtwSections * 2),

              // button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: onPressed, child: const Text('Continue')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
