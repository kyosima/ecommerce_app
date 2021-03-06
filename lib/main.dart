import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/views/auth/control_view.dart';
import 'package:ecommerce_app/views/auth/count.dart';
import 'package:ecommerce_app/views/auth/home_screen.dart';
import 'package:ecommerce_app/views/auth/login_screen.dart';
import 'package:ecommerce_app/views/auth/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          name: '/home',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
        ),
        GetPage(
          name: '/counter',
          page: () => Counter(),
        ),
      ],
      home: ControlView(),
    );
  }
}
