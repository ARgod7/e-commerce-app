import 'package:ecomapp/features/shop/models/bottom_scroll_view.dart';
import 'package:ecomapp/features/shop/models/custom_bg_scaffold.dart';
import 'package:ecomapp/features/shop/models/header_container.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBGScaffhold(
      child: Stack(
        children: [
          HeaderContainer(),
          BottomScrollList(),
        ],
      ),
    );
  }
}
