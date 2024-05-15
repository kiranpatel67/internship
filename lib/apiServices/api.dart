import 'package:http/http.dart' as http;
import 'package:internship/utils/constants.dart';

var loginemail = '';
var loginpassword = '';

Future getHttp() async {
  try {
    final response = await http.get(Uri.parse('https://turfapi.nearby.org.in/public/api/v1/category/getPublic'));
    if (response.statusCode == 200) {
      return response;
    }
  } catch (e) {
    print(e);
  }
}

// Future getLoginDio() async {
//   try {
//     await http.put('${AppConstants.onLogin}', data: FormData.fromMap({'email': loginemail, 'password': loginpassword}));
//   } catch (e) {}
// }
