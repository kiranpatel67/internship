import 'package:get/get.dart';

import 'controller.dart';

class ForgotpasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotpasswordScreenController());


  }
}
