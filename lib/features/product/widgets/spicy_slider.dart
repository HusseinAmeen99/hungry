import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';

import '../../../shared/custom_text.dart';

class SpicySlider extends StatelessWidget {
  SpicySlider({super.key, required this.value, required this.onChanged});
  final double value;
  final ValueChanged<double> onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/product_details_view/1.png',height: 250,),
        Spacer(),
        Column(
          children: [
            CustomText(text: 'Customize your burger \n to your Tasets \n Ultimate Experience'),
            Gap(25),

                Slider(
                  min: 0,
                  max: 1,
                  value: value,
                  onChanged: onChanged,
                  activeColor: Colors.red,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: '🧊',),
                Gap(100),
                CustomText(text: '🌶',),
              ],
            ),

          ],
        )
      ],
    );
  }
}
