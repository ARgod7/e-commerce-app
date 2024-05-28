import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class DividerWithTitle extends StatelessWidget {
  const DividerWithTitle({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              color: dark ? AColors.darkGrey : AColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5),
        ),
        Text(dividerText),
        Flexible(
          child: Divider(
              color: dark ? AColors.darkGrey : AColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
