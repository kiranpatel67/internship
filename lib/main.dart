import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship/presentation/login_screen/binding.dart';
import 'package:internship/presentation/login_screen/view.dart';
import 'package:internship/utils/routes/PageRoutes.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyCCubuZ5SCpgiz5b4WWBnCdGwJWNg3KOhA",
        authDomain: "nearbyturf-main.firebaseapp.com",
        databaseURL: "https://nearbyturf-main-default-rtdb.firebaseio.com",
        projectId: "nearbyturf-main",
        storageBucket: "nearbyturf-main.appspot.com",
        messagingSenderId: "669262715764",
        appId: "1:669262715764:web:9c2e59ec8f1a1e0e3a6a21",
        measurementId: "G-F2RPCT9SK9"));
  }
  else{
    await Firebase.initializeApp();
  }
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  runApp(MyApp());
  FirebaseAuth.instance
      .authStateChanges()
      .listen((User? user) {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });

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
      getPages: Pages,
    );
  }
}
