import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlignt;

  const CustomText({
    this.label = '',
    this.fontSize = 15,
    this.color = Colors.black,
    this.fontWeight = FontWeight.w200,
    this.textAlignt = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
        textAlign: textAlignt,
      ),
    );
  }
}
