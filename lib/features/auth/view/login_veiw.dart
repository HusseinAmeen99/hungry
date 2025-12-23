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

class LoginVeiw extends StatelessWidget {
   LoginVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller=TextEditingController();
    TextEditingController passwordcontroller=TextEditingController();
    AuthRepo authRepo=AuthRepo();
    Future<void>login() async {
      try {
        final user = await authRepo.login(
            emailcontroller.text.trim(), passwordcontroller.text.trim());
        if (user != null) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Root(),));
        }
      } catch (e) {
        String errorMessage = 'unhandled error in login';
        if (e is ApiError) {
          errorMessage=e.message;
        }
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage)));
      }
    }

    final GlobalKey<FormState> _formkey=GlobalKey<FormState>();
    return GestureDetector(
      //this to un focus the the cursor if there is a keyboard in the screen
      onTap: ()=> FocusScope.of(context).unfocus(),
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
                    Column(
                      children: [
                        SvgPicture.asset('assets/splash/images/svg/Hungry_.svg'),
                        Gap(15),
                        Text('Welcome Back , Discover The Fast Food',style: TextStyle(color: Colors.white54),),
                      ],
                    ),
                  Gap(50),

                    CustomTextformfield(hint: 'Email Address', isPassword: false, controller: emailcontroller,),
                    Gap(40),
                    CustomTextformfield(hint: 'Password', isPassword: true, controller: passwordcontroller,),
                    Gap(30),
                    Image.asset('assets/login_view/Line 15 (1).png',color: Colors.white,width: 300,),
                    Gap(20),
                    ///Button Widget
                    CustomBtn(btnText: 'Login',onTap: login),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: 'Forgot Password?',textcolor: Colors.white54,),
                        Gap(10),
                        GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignupView(),));},
                            child: CustomText(text: 'Don\'t have an account?Register',textcolor: Colors.white54,)),
                      ],

                    ),
                    Gap(40),
                    Center(
                      child: GestureDetector(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Root(),)),
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: CustomText(text: 'Continue as a Guest',fontsize: 18,)),
                        ),
                      ),
                    ),
                  ]
                ),
              )
              ),
                ),
        )
      ),
    );
  }
}
