import 'package:ecomapp/common/widgets/grid_layout.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: ASizes.defaultSpace / 2),
            child: Column(
              children: [
                // BANNERS

                const PromoSlider(
                    banners: [AImages.promo1, AImages.promo2, AImages.promo3]),

                const SizedBox(height: ASizes.spaceBtwItems),
                // TILES

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: ASizes.defaultSpace),
                  child: GridLayout(
                    itemCount: 8,
                    itemBuilder: (p0, p1) => const ProductCardVertical(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
