import 'package:ecomapp/features/auth/controller/onboarding_controller.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNav extends StatelessWidget {
  const OnBoardingDotNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = AHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: ADeviceUtils.getBottomNavigationBarHeight(),
      left: ASizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? AColors.light : AColors.dark, dotHeight: 10),
      ),
    );
  }
}
