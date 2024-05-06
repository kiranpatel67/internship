import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controller.dart';

import 'binding.dart';

class SignupScreenView extends GetView<SignupScreenController> {
  SignupScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar: BottomButton(),
      body: MainContainer(),
    ));
  }

  Row BottomButton() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(onPressed: () {
              Get.toNamed('/Login_Screen');
            }, child: const Text('Login', style: TextStyle(
                color: Color(0xFF099F0B)
            ),), style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith((states) => Color(0xFFFFFFFF)),

            ))
          ],
        );
  }

  Container MainContainer() {
    return Container(
        child: Container(
      padding: const EdgeInsets.all(32),
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text('Sign up',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
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
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xECEFEFEF),
                          hintText: 'First Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                            BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                        controller: controller.firstnameController,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xECEFEFEF),
                          hintText: 'Last Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                            BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                        controller: controller.lastnameController,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                      ),
                    ),
                    Obx(() {
                      return Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 30),

                        child: TextFormField(
                          obscureText: !controller.passwordVisible.value,
                          controller: controller.passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xECEFEFEF),
                            hintText: 'Password',
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
                        ),
                      );
                    }),
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
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color(0xFFFFFFFF)),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
