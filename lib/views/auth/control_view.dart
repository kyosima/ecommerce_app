import 'package:ecommerce_app/views/auth/home_screen.dart';
import 'package:ecommerce_app/views/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ControlView extends StatelessWidget {
  User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return LoginScreen();
    } else {
      return HomeScreen();
    }
  }
}
