import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/devices/device_utilities.dart';

class BottomScrollList extends StatelessWidget {
  const BottomScrollList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: dark ? AColors.black : AColors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        height: ADeviceUtils.getScreenHeight() / 2 + 60,
        width: ADeviceUtils.getScreenWidth(context),
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ASizes.defaultSpace),
            child: Column(
              children: [
                Text('List of items'),
                Text('List of items'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
