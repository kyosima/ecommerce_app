import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/views/auth/login_screen.dart';
import 'package:ecommerce_app/views/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ecommerce-App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
        ),
        GetPage(
          name: '/register',
          page: () => RegisterScreen(),
        ),
      ],
      home: LoginScreen(),
    );
  }
}
