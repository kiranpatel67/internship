import 'package:get/get.dart';
import 'package:internship/presentation/emailverification_screen/binding.dart';
import 'package:internship/presentation/emailverification_screen/view.dart';
import 'package:internship/presentation/forgotpassword_screen/binding.dart';
import 'package:internship/presentation/home_page/homeBinding.dart';
import 'package:internship/presentation/home_page/view.dart';
import 'package:internship/presentation/signup_screen/binding.dart';

import '../../presentation/forgotpassword_screen/view.dart';
import '../../presentation/login_screen/binding.dart';
import '../../presentation/login_screen/view.dart';
import '../../presentation/signup_screen/view.dart';

List<GetPage<dynamic>>? Pages = [
  GetPage(
      name: '/Login_Screen',
      page: () => LoginScreenView(),
      binding: LoginScreenBinding()),
  GetPage(
      name: '/Signup_Screen',
      page: () => SignupScreenView(),
      binding: SignupScreenBinding()),
  GetPage(
      name: '/Forgotpassword_Screen',
      page: () => ForgotpasswordView(),
      binding: ForgotpasswordBinding()),
  GetPage(
      name: '/Emailverification_Screen',
      page: () => EmailverificationView(),
      binding: EmailverificationBinding()),
  GetPage(
      name: '/Home_Screen',
      page: () => HomePageView(),
      binding: HomeBindingScreen())
];
