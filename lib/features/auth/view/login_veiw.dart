import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/auth/data/auth_repo.dart';
import 'package:hungr/features/auth/view/signup_view.dart';
import 'package:hungr/shared/custom_text.dart';
import 'package:hungr/shared/custom_textformfield.dart';

import '../../../core/network/api_error.dart';
import '../../../root.dart';
import '../widgets/custom_btn.dart';

class LoginVeiw extends StatefulWidget {
  LoginVeiw({super.key});

  @override
  State<LoginVeiw> createState() => _LoginVeiwState();
}

class _LoginVeiwState extends State<LoginVeiw> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  AuthRepo authRepo = AuthRepo();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
bool isLoading =false;
  Future<void> login() async {
    if (_formkey.currentState!.validate()){
    try {
      setState(() {
        isLoading=true;
      });
      final user = await authRepo.login(
        emailcontroller.text.trim(),
        passwordcontroller.text.trim(),
      );

      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => Root()),
        );
      }isLoading=false;


    } catch (e) {
      setState(() {
        isLoading=false;
      });
      String errorMessage = 'Unhandled error in login';

      if (e is ApiError) {
        errorMessage = e.message;
      }

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(
        margin: EdgeInsets.only(bottom: 20,right: 20,left: 20),
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.none,

        backgroundColor: Colors.red,
          content: CustomText(text: errorMessage,fontsize: 14,weight: FontWeight.bold,)));
    }
  }
}
  //}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //this to un focus the the cursor if there is a keyboard in the screen
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Gap(100),

                    ///Hungry Logo and Description
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/splash/images/svg/Hungry_.svg',
                        ),
                        Gap(15),
                        Text(
                          'Welcome Back , Discover The Fast Food',
                          style: TextStyle(color: Colors.white54),
                        ),
                      ],
                    ),
                    Gap(50),
                    CustomTextformfield(
                      hint: 'Email Address',
                      isPassword: false,
                      controller: emailcontroller,
                    ),
                    Gap(40),
                    CustomTextformfield(
                      hint: 'Password',
                      isPassword: true,
                      controller: passwordcontroller,
                    ),
                    Gap(30),
                    Image.asset(
                      'assets/login_view/Line 15 (1).png',
                      color: Colors.white,
                      width: 300,
                    ),
                    ///forgot password and don't have an account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: 'Forgot Password?',
                          textcolor: Colors.white,
                        ),
                        Gap(10),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupView(),
                              ),
                            );
                          },
                          child: CustomText(
                            text: 'Don\'t have an account?Register',
                            textcolor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Gap(200),
                    ///Login Button Widget
                   isLoading ? CupertinoActivityIndicator(color: Colors.white,radius: 15,):
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomBtn(btnText: 'Login', onTap: login)),
                    Gap(15),
                    ///continue as a guest
                    Center(
                      child: GestureDetector(
                        onTap:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Root()),
                            ),
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: CustomText(
                              text: 'Continue as a Guest',
                              fontsize: 18,
                              textcolor: Colors.white,
                            ),
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
