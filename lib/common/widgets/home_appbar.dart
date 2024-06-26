import 'package:ecomapp/common/widgets/appbar.dart';
import 'package:ecomapp/common/widgets/cart_counter_icon.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good day for shopping!',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(color: AColors.darkGrey),
          ),
          Text(
            'Arpit',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: AColors.darkerGrey),
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          usedark: false,
          count: '4',
          onPressed: () {},
        )
      ],
    );
  }
}
