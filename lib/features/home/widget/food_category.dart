import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';

class FoodCategory extends StatefulWidget {
  FoodCategory({super.key});

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  List category=[
    'All',
    'Combos',
    'Sliders',
    'Classic',
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:Axis.horizontal,
      child: Row(
        children: List.generate(category.length,(index) {
          return  GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 9),
              padding: EdgeInsets.symmetric(horizontal: 27,vertical: 15),
              decoration: BoxDecoration(
                color: selectedIndex==index? AppColors.primaryColor : Colors.grey.shade200,
                borderRadius:BorderRadius.circular(20),
              ),
              child: CustomText(text: category[index],textcolor: selectedIndex==index? Colors.white :Colors.black,),
            ),
          );
        },),
      ),
    );
  }
}
