import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
    required this.img,
    this.ver = ASizes.defaultSpace,
    this.hor = ASizes.defaultSpace / 2,
  });

  final String img;
  final double ver, hor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ver, horizontal: hor),
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
