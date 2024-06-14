import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
  });

  final String text;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Padding(
      padding: padding,
      child: Container(
        width: ADeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(ASizes.md),
        decoration: BoxDecoration(
          color: dark ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(ASizes.borderRadiusLg),
          border: Border.all(color: AColors.darkerGrey, width: 1),
        ),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal,
              color: AColors.grey,
            ),
            const SizedBox(width: ASizes.spaceBtwItems),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
