import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: ASizes.defaultSpace, horizontal: ASizes.defaultSpace / 2),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ASizes.borderRadiusMd)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(ASizes.borderRadiusMd),
            child: Image(image: AssetImage(img))),
      ),
    );
  }
}
