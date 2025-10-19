import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/home/widget/card_item.dart';

import '../../../shared/custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category=[
    'All',
    'Combos',
    'Sliders',
    'Classic',
  ];
  int selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
onTap: ()=> FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(50),
                ///logo with user login image
                Row(
                  children: [
                     Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/homeView/Hungry.svg',color: AppColors.primaryColor,height: 35,),
                          Text('Hello, Rich Sonic'),
                        ],
                      ),
                    Spacer(),
                    CircleAvatar(radius: 35,),
                  ],
                ),
                Gap(20),
                ///search bar
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(CupertinoIcons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.grey.shade50,
                        )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.grey.shade50,
                          )
                      ),
            
                    ),
                  ),
                ),
                Gap(20),
                ///category
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Row(
                    children: List.generate(category.length,(index) {
                      return  GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedIndex==index;
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
                ),
                Gap(20),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7,mainAxisSpacing: 2),
                    itemBuilder: (context, index) {
                      return CardItem(
                          image: 'assets/test/test1.png', title: 'Cheeseburger', description: 'Wendy\'s Burger', rate: '4.9');
                    },
                ),
            
              ],
            ),
          ),
        )
      ),
    );
  }
}
