import 'package:ecomapp/common/widgets/appbar.dart';
import 'package:ecomapp/common/widgets/cart_counter_icon.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
