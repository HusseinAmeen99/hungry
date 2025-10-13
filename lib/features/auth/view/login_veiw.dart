import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/shared/custom_text.dart';
import 'package:hungr/shared/custom_textformfield.dart';

class LoginVeiw extends StatelessWidget {
  LoginVeiw({super.key});

  @override
  final GlobalKey<FormState> formkey = GlobalKey();
  Widget build(BuildContext context) {
    return GestureDetector(
      //this to un focus the the cursor if there is a keyboard in the screen
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Gap(100),
                    Container(
                      height: 160,
                      width: 250,
                      child: SvgPicture.asset(
                        'assets/splash/images/svg/Hungry_.svg',
                        width: 132,
                      ),
                    ),
                    Gap(50),
                    CustomTextformfield(
                      hint: 'Email Address',
                      isPassword: false,
                    ),
                    Gap(40),
                    CustomTextformfield(hint: 'Password', isPassword: true),
                    Gap(30),
                    Image.asset(
                      'assets/login_view/Line 15 (1).png',
                      color: Colors.white,
                      width: 300,
                    ),
                    Gap(20),
                    GestureDetector(
                      onTap: () {
                        if (formkey.currentState!.validate()) {
                          print('Login done');
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: CustomText(
                            text: 'Login',
                            weight: FontWeight.bold,
                            fontsize: 18,
                            textcolor: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
