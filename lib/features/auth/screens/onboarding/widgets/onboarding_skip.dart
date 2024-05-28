import 'package:ecomapp/features/auth/controller/onboarding_controller.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ADeviceUtils.getAppBarHeight(),
      right: ASizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage,
        child: const Text('Skip'),
      ),
    );
  }
}
