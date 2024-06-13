import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.textcolor,
    this.buttonTitle = "view all",
    this.onPressed,
    this.showactionbutton = false,
  });

  final String title;
  final Color? textcolor;
  final String buttonTitle;
  final void Function()? onPressed;
  final bool showactionbutton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: textcolor),
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
          if (showactionbutton)
            TextButton(onPressed: onPressed, child: Text(buttonTitle))
        ],
      ),
    );
  }
}
