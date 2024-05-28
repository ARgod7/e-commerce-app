import 'package:ecomapp/features/auth/controller/onboarding_controller.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight(),
      right: ASizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: dark ? AColors.primary : AColors.dark,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
