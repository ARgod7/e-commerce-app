import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    required this.textcolor,
    this.bgcolor,
    this.onTap,
  });

  final String image, title;
  final Color textcolor;
  final Color? bgcolor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(right: ASizes.spaceBtwItems),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: bgcolor ?? (dark ? Colors.black : Colors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  alignment: Alignment.center,
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                  color: dark ? AColors.light : AColors.dark,
                ),
              ),
            ),
            const SizedBox(height: ASizes.spaceBtwItems / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: AColors.darkerGrey,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
