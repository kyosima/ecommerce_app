import 'package:flutter/material.dart';

class CustomButtonLogin extends StatelessWidget {
  final Color color;
  final String image;
  final String label;
  final double height;
  final Function()? onPressed;

  const CustomButtonLogin({
    required this.color,
    required this.image,
    required this.label,
    this.height = 50.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: height,
        child: RaisedButton(
          color: color,
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  width: 30,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Visibility(
                  visible: false,
                  child: Image.asset(
                    'assets/images/facebook.png',
                    width: 30,
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
