import 'package:get/get.dart';


import 'controller.dart';

class SignupScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignupScreenController());


  }


}