import 'package:ecomapp/common/widgets/appbar.dart';
import 'package:ecomapp/common/widgets/brand_name_verified.dart';
import 'package:ecomapp/common/widgets/cart_counter_icon.dart';
import 'package:ecomapp/common/widgets/circular_image.dart';
import 'package:ecomapp/common/widgets/grid_layout.dart';
import 'package:ecomapp/common/widgets/searchbar.dart';
import 'package:ecomapp/common/widgets/section_heading.dart';
import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/constants/enums.dart';
import 'package:ecomapp/utils/constants/image_string.dart';
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
                        ),
                        const SizedBox(height: ASizes.defaultSpace),

                        GridLayout(
                          itemCount: 4,
                          mainAxisExtent: 70,
                          itemBuilder: (p0, p1) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                padding: const EdgeInsets.all(ASizes.sm),
                                decoration: BoxDecoration(
                                  border: Border.all(color: AColors.grey),
                                  borderRadius: BorderRadius.circular(
                                      ASizes.borderRadiusMd),
                                ),
                                child: Row(
                                  children: [
                                    CircularImage(image: AImages.pcloth),
                                    const SizedBox(
                                        width: ASizes.spaceBtwItems / 2),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const BrandNameVerified(
                                            brand: "Nike",
                                            size: TextSizes.large,
                                          ),
                                          Text(
                                            '224 Products',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
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
