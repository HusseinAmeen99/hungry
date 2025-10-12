import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/shared/custom_text.dart';
import 'package:hungr/shared/custom_textformfield.dart';

class LoginVeiw extends StatelessWidget {
  const LoginVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //this to un focus the the cursor if there is a keyboard in the screen
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Gap(100),
               Container(
                //height: 160,
                  width: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('assets/login_view/red_sonic.png',)) ),
              Gap(50),
                CustomTextformfield(hint: 'Name', isPassword: false),
                Gap(40),
                CustomTextformfield(hint: 'Email Address', isPassword: false),
                Gap(40),
                CustomTextformfield(hint: 'Delivery address', isPassword: false),
                Gap(40),
                CustomTextformfield(hint: 'Password', isPassword: true),
                Gap(30),
                Image.asset('assets/login_view/Line 15 (1).png',color: Colors.white,width: 300,),
                Gap(20),
                Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: CustomText(text: 'Login',weight: FontWeight.bold,fontsize: 18,textcolor: AppColors.primaryColor,)),
                )
              ])
            ),
      )
      ),
    );
  }
}
