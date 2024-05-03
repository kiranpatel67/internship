import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';

class LoginScreenController extends GetxController {
  // final Login_screenState state = Login_screenState();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Rx<bool> passwordVisible = false.obs;
  final formKey = GlobalKey<FormState>();
  String? formvalidator = '';

}
