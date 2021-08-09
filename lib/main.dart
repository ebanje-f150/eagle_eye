
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'screens/Registration/RegistrationPage.dart';
import 'screens/Home/HomePage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      // home: LogInPage(),
    );
  }
}
