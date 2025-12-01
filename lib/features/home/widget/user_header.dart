import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../core/constants/app_colors.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(30),
            SvgPicture.asset('assets/homeView/Hungry.svg',color: AppColors.primaryColor,height: 35,),
            Gap(5),
            Text('Hello, Rich Sonic',style: TextStyle(color: Colors.grey.shade500),),
          ],
        ),
        Spacer(),
        CircleAvatar(radius: 25,backgroundColor: AppColors.primaryColor,child: Icon(CupertinoIcons.profile_circled,color: Colors.white,size: 45,),),
      ],
    );
  }
}
