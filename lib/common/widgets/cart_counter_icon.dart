import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.count,
    required this.iconColor,
    required this.onPressed,
  });

  final String count;
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.shopping_bag,
            size: 30,
            color: Colors.black,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                count,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: iconColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
