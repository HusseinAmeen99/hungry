import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (c) {},
      obscureText: true,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
          hintText: 'Email Address',
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white))
      ),
    );
  }
}
