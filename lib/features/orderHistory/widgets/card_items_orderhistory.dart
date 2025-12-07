import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../core/constants/app_colors.dart';
import '../../../shared/custom_text.dart';
import '../../auth/widgets/custom_btn.dart';

class CardItemsOrderhistory extends StatelessWidget {
  CardItemsOrderhistory({
    super.key,
    required this.title,
    required this.image,
    this.ReOrder,
    required this.Quantity,
    required this.Price,
  });

  final String title;
  final String Quantity;
  final String image;
  final String Price;
  final Function()? ReOrder;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  image,
                  width: 100,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Qty: $Quantity',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Price: $Price',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),

            const Gap(30),
            /// FIXED: Now inside the Padding child
            CustomBtn(
              btnText: 'Re Order',
              onTap: ReOrder,
            ),
          ],
        ),
      ),
    );
  }
}
