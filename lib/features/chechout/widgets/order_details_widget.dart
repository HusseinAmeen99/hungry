import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/custom_text.dart';

class OrderDetailsWidget extends StatelessWidget {
  OrderDetailsWidget({super.key, required this.order, required this.taxes, required this.fees, required this.total});
final String order,taxes,fees,total;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomRow('Order', '\$$order', false, false,),
          Gap(10),
          CustomRow('Taxes', '\$$taxes', false, false,),
          Gap(10),
          CustomRow('Delivery fees', '\$$fees', false, false,),
          Gap(10),
          Divider(),
          Gap(10),
          CustomRow('Total', '\$$total', true, false),
          Gap(10),
          CustomRow('Estimated Delivery Time', '15-20 mins', true, true,),



        ],
      ),
    );
  }
}
Widget CustomRow(title,price,isBold,isSmall){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(text: title,fontsize:isSmall ? 14 : 18,textcolor: Colors.grey.shade900,weight: isBold? FontWeight.bold : FontWeight.normal,),
      CustomText(text: '$price',fontsize:isSmall ? 14 : 18,textcolor: Colors.grey.shade900,weight: isBold? FontWeight.bold : FontWeight.normal,),

    ],
  );
}



