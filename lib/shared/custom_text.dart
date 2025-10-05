import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.fontsize, required this.textcolor, required this.weight});
final String text;
final double fontsize;
final Color textcolor;
final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,
      color: textcolor,
      fontWeight: weight
    ),);
  }
}
