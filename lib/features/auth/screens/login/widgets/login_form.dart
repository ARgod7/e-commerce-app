import 'package:ecomapp/features/auth/screens/password/forget_password.dart';
import 'package:ecomapp/features/auth/screens/signup%20create%20acc/signup.dart';
import 'package:ecomapp/navbar.dart';
import 'package:ecomapp/navmenu.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ASizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
              ),
            ),

            const SizedBox(height: ASizes.spaceBtwInputField),

            // Password
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: 'Password',
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),

            const SizedBox(height: ASizes.spaceBtwInputField / 2),

            // Remember me and forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text('Remember Me')
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text('Forget Password?'),
                ),
              ],
            ),

            const SizedBox(height: ASizes.spaceBtwSections),

            // Sign In button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const Navbar()),
                child: const Text('Sign In'),
              ),
            ),

            const SizedBox(height: ASizes.spaceBtwItems),

            // Create Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignUp()),
                child: const Text('Create Account'),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
