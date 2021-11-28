import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/home/home_main.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: _lightTheme,
      // darkTheme: _darkTheme,
      //theme: ThemeData(textTheme: TextTheme(bodyText1: TextStyle(fontSize: 50))),
      debugShowCheckedModeBanner: false,
      title: 'GetX app',
      initialRoute: "/Home",

      getPages: [

        GetPage(name: "/Home", page: ()=> Home()),
        // GetPage(name: "/pageLogin", page: ()=> Login()),
        // GetPage(name: "/pageHome", page: ()=> SplashScreen())
      ],
    );
  }
}