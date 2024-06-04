import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/common/widgets/promobanner.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/devices/device_utilities.dart';

class BottomScrollList extends StatelessWidget {
  const BottomScrollList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: dark ? AColors.black : AColors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: ADeviceUtils.getScreenHeight() / 2 + 60,
        width: ADeviceUtils.getScreenWidth(context),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: ASizes.defaultSpace),
            child: Column(
              children: [
                CarouselSlider(
                  items: const [
                    PromoBanner(img: AImages.promo1),
                    PromoBanner(img: AImages.promo2),
                    PromoBanner(img: AImages.promo3),
                  ],
                  options: CarouselOptions(viewportFraction: 1),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: ASizes.sm),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
