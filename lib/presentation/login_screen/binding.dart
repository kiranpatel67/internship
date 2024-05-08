import 'package:get/get.dart';

import 'controller.dart';

class LoginScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => LoginScreenController());



  }


}