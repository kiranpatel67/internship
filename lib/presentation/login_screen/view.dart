import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  LoginScreenView({Key? key}) : super(key: key);


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
        TextButton(onPressed: () {}, child: const Text('Sign up'))
      ],
    );
  }

  Container buildBody() {
    return Container(
      padding: const EdgeInsets.all(32),
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
                  TextField(

                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xECEFEFEF),
                        labelText: 'Email Address'
                    ),

                    controller: controller.emailController,

                  ),
                  Obx(() {
                    return TextField(
                      obscureText: !controller.passwordVisible,
                      controller: controller.passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: controller.passwordVisible
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () {
                            controller.passwordVisible =
                            !controller.passwordVisible;
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
                  onPressed: () {}, child: const Text('Forgot Password?'))),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: () {}, child: const Text('Login')),
          ),
        ],
      ),
    );
  }
}
