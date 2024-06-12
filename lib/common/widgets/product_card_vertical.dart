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
    return GestureDetector(
      onTap: () {},
      child: Container(
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(ASizes.productImageRadius),
                color: dark ? AColors.dark : AColors.light,
              ),
              width: 180,
              height: 160,
              padding: const EdgeInsets.all(2),
              child: Stack(
                children: [
                  //Thumbnail image
                  const Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: PromoBanner(
                        img: AImages.product1,
                        ver: 12,
                      )),

                  //Sale tag
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 6),
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
                    right: 0,
                    child: CircularIconButton(
                        color: Colors.red, icon: Iconsax.heart5),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: ASizes.spaceBtwItems / 2,
            ),

            // desc
            Padding(
              padding: const EdgeInsets.only(left: ASizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                    title: 'Red Nike Air Shoe',
                    smallSize: true,
                  ),
                  const SizedBox(height: ASizes.spaceBtwItems / 2),
                  Row(
                    children: [
                      Text(
                        'Nike',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(width: 2),
                      const Icon(
                        Iconsax.verify5,
                        color: AColors.primary,
                        size: ASizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$39.99",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(fontSizeDelta: -4)),
                      Container(
                        decoration: const BoxDecoration(
                          color: AColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(ASizes.cardRadiusLg),
                            bottomRight: Radius.circular(ASizes.cardRadiusLg),
                          ),
                        ),
                        child: const SizedBox(
                          width: ASizes.iconLg * 1.2,
                          height: ASizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.color,
    this.height,
    this.width,
    this.onPressed,
    this.size = ASizes.lg,
  });

  final IconData icon;
  final Color color;
  final double? height, width, size;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: dark
                ? AColors.black.withOpacity(0.9)
                : AColors.white.withOpacity(0.9)),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          ),
        ));
  }
}
