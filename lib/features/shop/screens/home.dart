import 'package:ecomapp/features/shop/models/custom_bg_scaffold.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/devices/device_utilities.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return CustomBGScaffhold(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: dark ? AColors.black : AColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: ADeviceUtils.getScreenHeight() / 2,
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
          )
        ],
      ),
    );
  }
}
