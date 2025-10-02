import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
body: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Gap(90),
    Center(child:
    Gap(90),
    Image.asset('assets/images/burger.png'),
  ],
),
    );
  }
}
