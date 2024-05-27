import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  /// variables

  /// Update current index when page scroll
  void updatePageIndicator(index) {}

  /// jump to dot selected
  void dotNavigationClick(index) {}

  /// Update current index and jump to next page
  void nextPage() {}

  /// Update current index and jump to last page
  void skipPage() {}
}
