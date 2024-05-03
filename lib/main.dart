import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/presentation/login_screen/binding.dart';
import 'package:internship/presentation/login_screen/view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {


    return  GetMaterialApp(
      initialBinding: LoginScreenBinding(),
      title: 'Internship',
      home: LoginScreenView(),
    );
  }
}
