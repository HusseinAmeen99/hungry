import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({super.key, required this.text,this.fontsize,this.textcolor,this.weight});
final String text;
final double? fontsize;
final Color? textcolor;
final FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: fontsize,
      color: textcolor,
      fontWeight: weight
    ),);
  }
}
