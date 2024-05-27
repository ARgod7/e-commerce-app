import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //carousel
          PageView(
            children: [Image(image: AssetImage(AImages.onBoardingImage1))],
          )
        ],
      ),
    );
  }
}
