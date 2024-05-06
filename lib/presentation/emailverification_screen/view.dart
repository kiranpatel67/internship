import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/presentation/emailverification_screen/controller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'package:google_fonts/google_fonts.dart';

import 'binding.dart';
import 'controller.dart';

class EmailverificationView extends GetView<EmailverificationScreenController> {
  EmailverificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Verification',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: ()=> Get.back(),),
          ),
      body: Container(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Please enter the 6 digit code sent to',
                      style: GoogleFonts.poppins()),
                  Text('${Get.parameters['email']}',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(color: Color(0xFF099F0B)))),
                ],
              ),
            ),
            OtpTextField(
              handleControllers: (controllers) => controller.pin,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              numberOfFields: 6,
                borderWidth: 0,
              borderColor: Color(0xFF512DA8),
              showFieldAsBox: true,
                filled: true,
                fillColor: Color(0xECEFEFEF),
                fieldHeight: 48,

              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.pin.text = verificationCode;
              }, // end onSubmit
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              decoration: BoxDecoration(
                // color:
              ),
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:  MaterialStateColor.resolveWith((states) => Color(
                          0xFF099F0B)),
                      minimumSize: Size(800, 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                  ),
                  onPressed: () {
                    CheckOTP(controller.pin.text);
                  },
                  child: const Text('Verify', style: TextStyle(color: Color(0xFFFFFFFF)),
                  )

              ),
            ),
          ],
        ),
      ),
    ));
  }
  CheckOTP(verificationCode){
    print(verificationCode);
  }
}
