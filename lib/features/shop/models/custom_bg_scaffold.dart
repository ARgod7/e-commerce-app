import 'package:ecomapp/utils/constants/image_string.dart';
import 'package:flutter/material.dart';

class CustomBGScaffhold extends StatelessWidget {
  const CustomBGScaffhold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            image: AssetImage(AImages.bg3),
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          SafeArea(child: child),
          Container()
        ],
      ),
    );
  }
}
