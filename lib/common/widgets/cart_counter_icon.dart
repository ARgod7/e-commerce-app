import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.count,
    required this.onPressed,
    this.textColor = Colors.white,
    this.iconcolor = Colors.black,
    this.usedark = true,
  });

  final String count;
  final Color? textColor, iconcolor;
  final VoidCallback onPressed;
  final bool usedark;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            size: 30,
            color: usedark ? (dark ? AColors.white : AColors.black) : iconcolor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color:
                  usedark ? (dark ? AColors.white : AColors.black) : iconcolor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                count,
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: usedark
                          ? (dark ? AColors.black : AColors.white)
                          : textColor,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
