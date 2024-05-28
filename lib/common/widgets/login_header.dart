import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? AImages.lightAppLogo : AImages.darkAppLogo),
        ),
        const SizedBox(height: ASizes.defaultSpace),
        Text('Welcome back,',
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: ASizes.sm),
        Text('Discover Limitless choices and Unmatched Convenience.',
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
