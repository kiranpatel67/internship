import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:flutter/material.dart';

class SignupScreenController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  Rx<bool> passwordVisible = false.obs;
  final formKey = GlobalKey<FormState>();
  UserCredential? userCredential;


}