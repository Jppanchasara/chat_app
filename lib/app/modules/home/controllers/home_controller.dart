import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final tabIndex = 2.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
