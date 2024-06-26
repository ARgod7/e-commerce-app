import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
    required this.img,
    this.top = ASizes.defaultSpace,
    this.bottom = ASizes.defaultSpace,
    this.left = ASizes.defaultSpace / 2,
    this.right = ASizes.defaultSpace / 2,
  });

  final String img;
  final double top, bottom, left, right;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ASizes.borderRadiusMd)),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(ASizes.borderRadiusMd),
            child: Image(
              image: AssetImage(img),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
