
import 'package:eagle_eye/roots/RouteApp.dart';
import 'package:eagle_eye/roots/pagesApp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  //  initialBinding: MainBinding(),
       debugShowCheckedModeBanner: false,
      title: 'EAGLE EYE',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
       initialRoute: RouteApp.home,
      getPages: PageApp.pages,
     
    );
  }
}

