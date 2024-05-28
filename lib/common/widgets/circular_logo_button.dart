import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularLogoButton extends StatelessWidget {
  const CircularLogoButton({
    super.key,
    required this.logo,
  });

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: () {},
        icon: Image(
          width: ASizes.iconMd,
          height: ASizes.iconMd,
          image: AssetImage(logo),
        ),
      ),
    );
  }
}
