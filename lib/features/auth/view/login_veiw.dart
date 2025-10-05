import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';

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
                TextFormField(
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
                ),
          ])
            ),
      )
      ),
    );
  }
}
