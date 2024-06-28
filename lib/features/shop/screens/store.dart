import 'package:ecomapp/common/widgets/appbar.dart';
import 'package:ecomapp/common/widgets/brand_card.dart';
import 'package:ecomapp/common/widgets/cart_counter_icon.dart';
import 'package:ecomapp/common/widgets/grid_layout.dart';
import 'package:ecomapp/common/widgets/searchbar.dart';
import 'package:ecomapp/common/widgets/section_heading.dart';
import 'package:ecomapp/features/shop/models/tab_bar.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:ecomapp/utils/constants/sizes.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              count: '3',
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
                expandedHeight: 410,
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
                        const SizedBox(height: ASizes.spaceBtwSections / 2),

                        // Section
                        SectionHeading(
                          padding: 0,
                          title: 'Featured Brands',
                          onPressed: () {},
                          showactionbutton: true,
                        ),
                        const SizedBox(height: ASizes.defaultSpace),

                        GridLayout(
                          itemCount: 4,
                          mainAxisExtent: 70,
                          itemBuilder: (p0, p1) {
                            return const BrandCard(
                              showBorder: true,
                            );
                          },
                        ),
                      ]),
                ),
                bottom: const ATabBar(
                  tabs: [
                    Tab(
                        child: Text(
                      'Sports',
                    )),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                    Tab(child: Text('Grocery')),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(ASizes.defaultSpace),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AColors.darkGrey),
                          borderRadius:
                              BorderRadius.circular(ASizes.borderRadiusLg),
                          color: Colors.transparent),
                      child: Column(children: [
                        //BRAND
                        const BrandCard(showBorder: false),

                        // PRODUCTS
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 100,
                                  padding: const EdgeInsets.all(ASizes.sm / 2),
                                  margin: const EdgeInsets.all(ASizes.sm),
                                  decoration: BoxDecoration(
                                      color: dark
                                          ? AColors.darkerGrey
                                          : AColors.light,
                                      borderRadius: BorderRadius.circular(
                                          ASizes.borderRadiusLg)),
                                  child: const Image(
                                      image: AssetImage(AImages.nikecloth)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 100,
                                  padding: const EdgeInsets.all(ASizes.sm / 2),
                                  margin: const EdgeInsets.all(ASizes.sm),
                                  decoration: BoxDecoration(
                                      color: dark
                                          ? AColors.darkerGrey
                                          : AColors.light,
                                      borderRadius: BorderRadius.circular(
                                          ASizes.borderRadiusLg)),
                                  child: const Image(
                                      image: AssetImage(AImages.nikecloth)),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 100,
                                  padding: const EdgeInsets.all(ASizes.sm / 2),
                                  margin: const EdgeInsets.all(ASizes.sm),
                                  decoration: BoxDecoration(
                                      color: dark
                                          ? AColors.darkerGrey
                                          : AColors.light,
                                      borderRadius: BorderRadius.circular(
                                          ASizes.borderRadiusLg)),
                                  child: const Image(
                                      image: AssetImage(AImages.nikecloth)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
