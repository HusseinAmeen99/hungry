import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CustomTextfiled extends StatelessWidget {
   CustomTextfiled({super.key, required this.labelText,required this.controller});
final TextEditingController controller;
final labelText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.primaryColor,
      cursorHeight: 20,
      style: TextStyle(color: AppColors.primaryColor),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: AppColors.primaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
