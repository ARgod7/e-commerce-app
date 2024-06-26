import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    required this.image,
    this.width = 50,
    this.height = 50,
    this.padding = ASizes.sm,
    this.fit = BoxFit.cover,
  });

  final String image;
  final double width, height, padding;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Container(
      width: 50,
      height: 50,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: dark ? AColors.black : AColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: AssetImage(image),
        color: dark ? AColors.white : AColors.black,
      ),
    );
  }
}
