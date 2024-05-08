import 'package:get/get.dart';

import 'homeController.dart';

class HomeBindingScreen extends Bindings {
  // final Home_pageState state = Home_pageState();
  @override
  void dependencies() {
    Get.lazyPut(() => homeScreenController());



  }
}
