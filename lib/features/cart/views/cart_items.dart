import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class CartItems extends StatelessWidget {
   CartItems({super.key, required this.title, required this.description, required this.image, this.onAdd, this.onMin, this.onRemove,this.number});
  final String title;
  final String description;
  final String image;
  final Function() ? onAdd;
  final Function() ? onMin;
  final Function() ? onRemove;
  int? number;
  @override
  Widget build(BuildContext context) {
    return Card(
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
                  image,
                  width: 100,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onAdd
                      ,child: CircleAvatar(
                      child: Icon(Icons.add, color: Colors.white),
                      backgroundColor: AppColors.primaryColor,
                    ),
                    ),
                    Gap(20),
                    CustomText(
                      text: '$number',
                      weight: FontWeight.bold,
                      fontsize: 18,
                    ),
                    Gap(20),
                    GestureDetector(
                      onTap: onMin
                      ,child: CircleAvatar(
                      child: Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                      ),
                      backgroundColor: AppColors.primaryColor,
                    ),
                    ),
                  ],
                ),
                Gap(40),
                GestureDetector(
                  onTap: onRemove
                  ,child: Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Center(child: CustomText(text: 'Remove',textcolor: Colors.white,fontsize: 18,)),
                ),

                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
