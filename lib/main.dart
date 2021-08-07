
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'screens/Registration/RegistrationPage.dart';
import 'screens/Map/MapPage.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MapPage(),
      // home: LogInPage(),
    );
  }
}
