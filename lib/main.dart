import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/views/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce-App',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: LoginScreen(),
    );
  }
}
