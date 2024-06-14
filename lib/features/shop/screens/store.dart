import 'package:ecomapp/common/widgets/appbar.dart';
import 'package:ecomapp/common/widgets/cart_counter_icon.dart';
import 'package:ecomapp/common/widgets/searchbar.dart';
import 'package:ecomapp/common/widgets/section_heading.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CartCounterIcon(
            count: '3',
            iconColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: dark ? AColors.dark : AColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(ASizes.defaultSpace),
                  child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        // Search bar
                        const MySearchBar(
                          text: 'Search',
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: ASizes.spaceBtwSections),

                        // Section
                        SectionHeading(
                          padding: 0,
                          title: 'Featured Brands',
                          onPressed: () {},
                          showactionbutton: true,
                        )
                      ]),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
