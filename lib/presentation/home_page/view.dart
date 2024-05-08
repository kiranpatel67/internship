import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homeBinding.dart';
import 'homeController.dart';

class HomePageView extends GetView<homeScreenController> {
  HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Text("hi")
        ],
      ),
    ));
  }
}
