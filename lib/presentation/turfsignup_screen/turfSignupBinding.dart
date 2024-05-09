import 'package:get/get.dart';

import 'turfSignupController.dart';

class TurfsignupBinding extends Bindings {
    @override
    void dependencies() {
      Get.lazyPut(() => turfSignupController());


    }

}
