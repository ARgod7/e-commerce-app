import 'package:ecomapp/features/shop/screens/home.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          color: dark ? AColors.black : AColors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: ASizes.defaultSpace,
                vertical: ASizes.defaultSpace / 2),
            child: GNav(
              padding: const EdgeInsets.all(16),
              tabActiveBorder: Border.all(color: AColors.primary, width: 2),
              backgroundColor: dark ? AColors.black : AColors.white,
              gap: 8,
              onTabChange: (value) {
                controller.selectedIndex.value = value;
              },
              tabs: const [
                GButton(icon: Iconsax.home, text: 'Home'),
                GButton(icon: Iconsax.shop, text: 'Shop'),
                GButton(icon: Iconsax.heart, text: 'Wishlist'),
                GButton(icon: Iconsax.user, text: 'Profile'),
              ],
            ),
          ),
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
    Container(color: Colors.green),
  ];
}
