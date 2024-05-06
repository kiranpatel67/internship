import 'package:get/get.dart';

import 'controller.dart';

class EmailverificationBinding extends Bindings {


  @override
  void dependencies() {
    Get.lazyPut(() => EmailverificationScreenController());


  }}
