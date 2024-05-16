import 'package:get/get.dart';

import 'controller.dart';

class DioBinding extends Bindings {


  @override
  void dependencies() {
    Get.lazyPut(() => DioController());


  }}
