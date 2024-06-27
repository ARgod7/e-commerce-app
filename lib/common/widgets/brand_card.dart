import 'package:ecomapp/common/widgets/brand_name_verified.dart';
import 'package:ecomapp/common/widgets/circular_image.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/enums.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
  });

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(ASizes.sm),
        decoration: BoxDecoration(
          border: showBorder
              ? Border.all(color: AColors.grey)
              : const Border.symmetric(
                  horizontal: BorderSide.none, vertical: BorderSide.none),
          borderRadius: BorderRadius.circular(ASizes.borderRadiusMd),
        ),
        child: Row(
          children: [
            const CircularImage(image: AImages.clothicon),
            const SizedBox(width: ASizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandNameVerified(
                    brand: "Nike",
                    size: TextSizes.large,
                  ),
                  Text(
                    '224 Products',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
