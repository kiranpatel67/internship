import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../signup_screen/view.dart';
import 'controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:internship/utils/widget/TextField.dart';

class LoginScreenView extends GetView<LoginScreenController> {
   LoginScreenView({Key? key}) : super(key: key);
  final controller= Get.put(LoginScreenController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: bottomButton(),
        body: buildBody(),
      ),
    );
  }

  Row bottomButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Don`t have an account?'),
        TextButton(onPressed: () {
          Get.toNamed('/Signup_Screen');
        }, child: const Text('Sign up', style: TextStyle(
          color: Color(0xFF099F0B)
        ),), style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith((states) => Color(0xFFFFFFFF)),
          
        ))
      ],
    );
  }

  Container buildBody() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Form(
        key: controller.formKey,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text('Log in',
                  style: GoogleFonts.poppins(
                    textStyle:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
            ),
            Text(
        
                'Please enter your email address and password details to login.',
                style: GoogleFonts.poppins()),
            Container(

                margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                child: Column(
                  
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextFormField(
                        validator: (value){
                          if(GetUtils.isEmail(value!)){
                            return null;
                        }
                          return 'Enter a vaild Email Address';
                          },
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xECEFEFEF),
                            hintText: 'Email Address',

                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                        ),

                        controller: controller.emailController,

                      ),
                    ),
                    Obx(() {
                      return TextFormField(
                        obscureText: !controller.passwordVisible.value,
                        controller: controller.passwordController,
                        validator: (value){
                          if(value != ''){
                            return null;
                          }
                          return 'Enter the password';
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xECEFEFEF),
                      border: OutlineInputBorder(

                      borderSide: BorderSide.none,
                      borderRadius:
                      BorderRadius.all(Radius.circular(16)),
                      ),
                          suffixIcon: IconButton(
                            icon: controller.passwordVisible.value
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              controller.passwordVisible.value =
                              !controller.passwordVisible.value;
                            },
                          ),
                        ),
                      );
                    }),
                  ],
                )),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {
                      Get.toNamed('/Forgotpassword_Screen');
                    }, child: const Text('Forgot Password?'),
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith((states) => Color(0xFFFFFFFF)),
                )
            ),),
            Container(
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
                  if(controller.formKey.currentState!.validate()){
                    print('all correct');
                    Get.toNamed('/Home_Screen');
                  }
                  else{
                    print('error');

                  }

                  },
                  child: const Text('Login', style: TextStyle(color: Color(0xFFFFFFFF)),
                )

              ),
            ),

          ],
        ),
      ),
    );
  }
}
