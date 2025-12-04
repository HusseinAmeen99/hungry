import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/auth/widgets/custom_btn.dart';

import '../../../shared/custom_text.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(40),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/homeView/gridViewImage/burger1.png',
                          width: 100,
                        ),
                        Text(
                          'Cheeseburger\nHussein Ameen',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Icon(Icons.add, color: Colors.white),
                              backgroundColor: AppColors.primaryColor,
                            ),
                            Gap(20),
                            CustomText(
                              text: '1',
                              weight: FontWeight.bold,
                              fontsize: 18,
                            ),
                            Gap(20),
                            CircleAvatar(
                              child: Icon(
                                CupertinoIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: AppColors.primaryColor,
                            ),
                          ],
                        ),
                        Gap(40),
                        Container(
                          width: 150,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(20),

                          ),
                          child: Center(child: CustomText(text: 'Remove',textcolor: Colors.white,fontsize: 18,)),
                        )                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
