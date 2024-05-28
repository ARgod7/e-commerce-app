import 'package:ecomapp/features/auth/controller/onboarding_controller.dart';
import 'package:ecomapp/features/auth/screens/onboarding/widgets/onboarding_dot_nav.dart';
import 'package:ecomapp/features/auth/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ecomapp/features/auth/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ecomapp/features/auth/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          //carousel
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AImages.onBoardingImage1,
                title: ATexts.onBoardingText1,
                subtitle: ATexts.onBoardingSubTitleText1,
              ),
              OnBoardingPage(
                image: AImages.onBoardingImage2,
                title: ATexts.onBoardingText2,
                subtitle: ATexts.onBoardingSubTitleText2,
              ),
              OnBoardingPage(
                image: AImages.onBoardingImage3,
                title: ATexts.onBoardingText3,
                subtitle: ATexts.onBoardingSubTitleText3,
              ),
            ],
          ),

          // Skip button
          const OnBoardingSkip(),

          // Dot navigation
          const OnBoardingDotNav(),

          // Circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
