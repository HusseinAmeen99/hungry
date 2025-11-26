import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/shared/custom_text.dart';
import 'package:hungr/shared/custom_textformfield.dart';

class LoginVeiw extends StatelessWidget {
   LoginVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller=TextEditingController();
    TextEditingController passwordcontroller=TextEditingController();
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
                    GestureDetector(
                      onTap: (){
                        if(_formkey.currentState!.validate()){
                          print('Login done');
                        }
                        else{
                          print('Login failed');
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: CustomText(text: 'Login',weight: FontWeight.bold,fontsize: 18,textcolor: AppColors.primaryColor,)),
                      ),
                    )
                  ]),
              )
              ),
                ),
        )
      ),
    );
  }
}
