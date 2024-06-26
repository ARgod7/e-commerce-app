import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/enums.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BrandNameVerified extends StatelessWidget {
  const BrandNameVerified({
    super.key,
    required this.brand,
    this.textcolor,
    this.size = TextSizes.small,
  });

  final String brand;
  final Color? textcolor;
  final TextSizes size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BrandTitle(
            brand: brand,
            color: textcolor,
            size: size,
          ),
        ),
        const SizedBox(width: 2),
        const Icon(
          Iconsax.verify5,
          color: AColors.primary,
          size: ASizes.iconXs,
        )
      ],
    );
  }
}

class BrandTitle extends StatelessWidget {
  const BrandTitle({
    super.key,
    required this.brand,
    this.textalign = TextAlign.center,
    this.size = TextSizes.small,
    this.color,
    this.maxlines = 1,
  });

  final String brand;
  final TextAlign? textalign;
  final TextSizes size;
  final Color? color;
  final int maxlines;

  @override
  Widget build(BuildContext context) {
    return Text(brand,
        textAlign: textalign,
        overflow: TextOverflow.ellipsis,
        maxLines: maxlines,
        style: size == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : size == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : size == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}
