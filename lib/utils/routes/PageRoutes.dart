import 'package:get/get.dart';

import '../../presentation/login_screen/binding.dart';
import '../../presentation/login_screen/view.dart';

List<GetPage<dynamic>>? Pages = [
  GetPage(
      name: '/Login_Screen',
      page: () => LoginScreenView(),
      binding: LoginScreenBinding())
];
