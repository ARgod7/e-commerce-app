import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/common/widgets/promobanner.dart';
import 'package:ecomapp/features/shop/controller/home_controller.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => PromoBanner(img: url)).toList(),
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < banners.length; i++)
                  Container(
                    width: 20,
                    height: 5,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: controller.carouselCurrentIndex.value == i
                            ? const Color.fromARGB(255, 255, 198, 135)
                            : AColors.lightGrey,
                        borderRadius: BorderRadius.circular(100)),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
