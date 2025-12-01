import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungr/core/constants/app_colors.dart';

import '../../../shared/custom_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.image, required this.title, required this.description, required this.rate});
final String image,title,description,rate;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image,width: 165,),
            CustomText(text: title),
            CustomText(text: description),
            Row(
              children: [
                CustomText(text: '⭐ $rate'),
                Spacer(),
                Icon(CupertinoIcons.heart_fill,color: AppColors.primaryColor,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
