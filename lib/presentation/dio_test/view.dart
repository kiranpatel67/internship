import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/presentation/emailverification_screen/controller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:google_fonts/google_fonts.dart';

import '../../apiServices/api.dart';
import 'binding.dart';
import 'controller.dart';

class DioTestView extends GetView<DioController> {
  DioTestView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                child: TextButton(
                  onPressed: () async{

                    var response = await getHttp();
                    if(response != null){
                      controller.response = response.body;
                      print(controller.response);
                    }

                  }, child: Text('Test Dio'),

                ),
              ),

            ],
          ),
        ));
  }
  CheckOTP(verificationCode){
    print(verificationCode);
  }
}
