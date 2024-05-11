import 'package:get/get.dart';

import 'state.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CetegoryController());



  }
}
