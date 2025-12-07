import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class CustomBtn extends StatelessWidget {
  CustomBtn({super.key, required this.btnText, this.onTap});
  final void Function()? onTap;
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: CustomText(
            text: btnText,
            weight: FontWeight.bold,
            fontsize: 20,
            textcolor: Colors.white,
          ),
        ),
      ),
    );
  }
}
