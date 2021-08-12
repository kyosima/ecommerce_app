import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/views/auth/register_screen.dart';
import 'package:ecommerce_app/views/widget/custom_buttonlogin.dart';
import 'package:ecommerce_app/views/widget/custom_text.dart';
import 'package:ecommerce_app/views/widget/custom_textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.grey[100],
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 0.2,
                              blurRadius: 5,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CustomText(
                                      label: 'WelCome,',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 27,
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    CustomText(
                                      label: 'Sign in to continute',
                                    )
                                  ],
                                ),
                                FlatButton(
                                  onPressed: () {
                                    Get.toNamed('/register');
                                  },
                                  child: CustomText(
                                    label: 'SignUp',
                                    color: primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            CustomTextFormField(
                              label: 'Email',
                              textInput: TextInputType.emailAddress,
                              hint: 'Your Email',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                              label: 'Password',
                              hint: 'Your password',
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              child: CustomText(
                                label: 'Forgot your Password?',
                                textAlignt: TextAlign.right,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 45,
                              child: RaisedButton(
                                color: primaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomText(
                    label: '-OR-',
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomButtonLogin(
                    label: 'Sign In With Facebook',
                    color: Colors.white,
                    image: 'assets/images/facebook.png',
                    onPressed: () {
                      print('Login Facebook');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomButtonLogin(
                    label: 'Sign In With Google',
                    color: Colors.white,
                    image: 'assets/images/search.png',
                    onPressed: () {
                      print('Login Google');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
