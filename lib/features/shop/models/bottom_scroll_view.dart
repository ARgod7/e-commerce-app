import 'package:ecomapp/common/widgets/product_card_vertical.dart';
import 'package:ecomapp/common/widgets/promo_slider.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: ASizes.defaultSpace),
            child: Column(
              children: [
                // BANNERS

                PromoSlider(
                    banners: [AImages.promo1, AImages.promo2, AImages.promo3]),

                SizedBox(height: ASizes.spaceBtwItems),
                // TILES

                ProductCardVertical(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
