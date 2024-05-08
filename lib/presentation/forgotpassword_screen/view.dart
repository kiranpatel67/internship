import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'binding.dart';
import 'controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordScreenController> {
  ForgotpasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password?',
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
        padding: const EdgeInsets.all(32),
        child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                    'Please enter your registered email address to receive password reset instruction.',
                    style: GoogleFonts.poppins()),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xECEFEFEF),
                            hintText: 'Email Address',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          controller: controller.emailController,
                          validator: (value){
                            if(GetUtils.isEmail(value!)){
                              return null;
                            }
                            return 'Enter a vaild Email Address';
                          },
                        ),
                      ),
                    ],
                  )),
              Container(
                decoration: BoxDecoration(
                    // color:
                    ),
                alignment: Alignment.center,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Color(0xFF099F0B)),
                        minimumSize: Size(800, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      if(controller.formKey.currentState!.validate()){
                        print('all correct');
                        Get.toNamed('/Emailverification_Screen?email=${controller.emailController.text}');

                      }
                      else{
                        print('error');

                      }

                      },
                    child: const Text(
                      'Continue',
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
