import 'package:ecomapp/common/widgets/promobanner.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/shadows.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(ASizes.productImageRadius),
        color: dark ? AColors.darkerGrey : AColors.white,
      ),
      child: Column(
        children: [
          // thumbnaail, wishlist, sale
          Container(
            height: 180,
            padding: const EdgeInsets.all(1),
            color: dark ? AColors.dark : AColors.light,
            child: Stack(
              children: [
                //Thumbnail image
                const PromoBanner(img: AImages.product1),

                //Sale tag
                Positioned(
                  top: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
                    decoration: BoxDecoration(
                        color: AColors.secondary.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(ASizes.sm)),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                ),

                // WISHLIST
                const Positioned(
                  top: 0,
                  right: -12,
                  child: CircularIconButton(
                      color: Colors.red, icon: Iconsax.heart5),
                ),
              ],
            ),
          ),

          // desc
        ],
      ),
    );
  }
}

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.color,
  });

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: dark
                ? AColors.black.withOpacity(0.9)
                : AColors.white.withOpacity(0.9)),
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon, color: color),
        ));
  }
}
