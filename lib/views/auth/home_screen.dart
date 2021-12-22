import 'package:ecommerce_app/controllers/fire_base/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  authController.logOut();
                },
                child: Text('Logout'),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed('/counter');
                },
                child: Text('Go to Counter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
