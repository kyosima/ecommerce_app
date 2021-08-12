import 'package:ecommerce_app/constance.dart';
import 'package:ecommerce_app/views/widget/custom_text.dart';
import 'package:ecommerce_app/views/widget/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 0.2,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: CustomText(
                            label: 'Sign Up',
                            color: Colors.black,
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        CustomTextFormField(
                          label: 'Name',
                          hint: 'Your Name',
                          textInput: TextInputType.text,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          label: 'Email',
                          hint: 'Your Email',
                          textInput: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          label: 'Password',
                          hint: 'Your Password',
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        SizedBox(
                          height: 45,
                          child: RaisedButton(
                            color: primaryColor,
                            onPressed: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
