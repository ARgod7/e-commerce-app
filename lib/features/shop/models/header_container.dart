import 'package:ecomapp/common/widgets/circular_img_text.dart';
import 'package:ecomapp/common/widgets/home_appbar.dart';
import 'package:ecomapp/common/widgets/searchbar.dart';
import 'package:ecomapp/common/widgets/section_heading.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child: SizedBox(
        height: ADeviceUtils.getScreenHeight() / 2,
        width: ADeviceUtils.getScreenWidth(context),
        child: const Column(
          children: [
            // App Bar
            SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),
            HomeAppBar(),
            SizedBox(height: ASizes.spaceBtwSections / 2),

            // Search bar
            MySearchBar(text: 'Seach in store'),
            SizedBox(height: ASizes.spaceBtwSections / 2),

            // Catergories
            Column(
              children: [
                SectionHeading(
                    title: 'Popular categories', textcolor: Colors.black),
                SizedBox(height: ASizes.spaceBtwItems),
                CircularImagesnText(
                  image: AImages.darkAppLogo,
                  textcolor: Colors.black,
                  title: 'Shoes',
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
