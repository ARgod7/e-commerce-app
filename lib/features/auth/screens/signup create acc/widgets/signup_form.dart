import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          // Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'First name',
                  ),
                ),
              ),
              const SizedBox(width: ASizes.spaceBtwInputField),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Last name',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: ASizes.spaceBtwInputField),

          // Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: 'Username',
            ),
          ),

          const SizedBox(height: ASizes.spaceBtwInputField),

          // Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: 'Email',
            ),
          ),

          const SizedBox(height: ASizes.spaceBtwInputField),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: 'Phone Number',
            ),
          ),

          const SizedBox(height: ASizes.spaceBtwInputField),

          // Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(height: ASizes.spaceBtwSections),

          // terms and condition
          Row(
            children: [
              SizedBox(
                child: Checkbox(value: true, onChanged: (value) {}),
                height: 24,
                width: 24,
              ),
              const SizedBox(width: ASizes.spaceBtwItems),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: 'I Agree to ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: 'Privacy policy ',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? AColors.white : AColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? AColors.white : AColors.primary),
                    ),
                    TextSpan(
                        text: 'and ',
                        style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(
                      text: 'Terms of use',
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: dark ? AColors.white : AColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              dark ? AColors.white : AColors.primary),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: ASizes.spaceBtwSections,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Create Account'),
            ),
          ),
        ],
      ),
    );
  }
}
