import 'package:ecomapp/common/widgets/home_appbar.dart';
import 'package:ecomapp/common/widgets/searchbar.dart';
import 'package:ecomapp/common/widgets/section_heading.dart';
import 'package:ecomapp/common/widgets/vertical_img_text.dart';
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
        child: Column(
          children: [
            // App Bar
            const SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),
            const HomeAppBar(),
            const SizedBox(height: ASizes.spaceBtwSections / 2),

            // Search bar
            const MySearchBar(text: 'Seach in store'),
            const SizedBox(height: ASizes.spaceBtwSections / 2),

            // Catergories
            Column(
              children: [
                const SectionHeading(
                  title: 'Popular categories',
                  textcolor: Colors.black,
                ),
                const SizedBox(
                  height: ASizes.spaceBtwItems,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: ASizes.defaultSpace),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const VerticalImageText(
                          image: AImages.darkAppLogo,
                          textcolor: Colors.black,
                          title: 'Shoes',
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
