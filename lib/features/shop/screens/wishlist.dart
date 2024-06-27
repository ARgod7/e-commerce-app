import 'package:ecomapp/utils/constants/colors.dart';
import 'package:ecomapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: TabBar(
          tabs: [
            Tab(child: Text('hii')),
            Tab(child: Text('hii')),
            Tab(child: Text('hii')),
            Tab(child: Text('hii')),
            Tab(child: Text('hii')),
          ],
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          indicatorColor: AColors.primary,
          labelColor: AHelperFunctions.isDarkMode(context)
              ? AColors.white
              : AColors.primary,
          unselectedLabelColor: AColors.darkGrey,
        ),
      ),
    );
  }
}
