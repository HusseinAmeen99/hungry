import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/shared/custom_text.dart';
import 'cart_items.dart';

class CartView extends StatefulWidget {
  CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
int number =1;
List<int> quantities = [1, 1, 1, 1, 1, 1];
// void onAdd(){
//   setState(() {
//     number++;
//   });
// }
// void onMin(){
//   setState(() {
//     if(number>1)
//       {number--;}
//     else{
//       return ;
//     }
//   });
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(40),

            /// BEST PERFORMANCE ✓
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CartItems(
                    image: 'assets/homeView/gridViewImage/burger1.png',
                    title: '99 Grill',
                    description: 'Hussein Ameen',
                    number: quantities[index],
                    onAdd: () {
                      setState(() {
                        quantities[index]++;
                      });
                    },
                    onMin:() {
                      setState(() {
                        if (quantities[index] > 1) quantities[index]--;
                      });
                    },

                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      CustomText(
                        text: 'Total',
                        fontsize: 22,
                        textcolor: Colors.grey,
                      ),
                      Gap(10),
                      CustomText(
                        text: '\$10.99',
                        fontsize: 26,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:  Center(
                      child: CustomText(
                        text: 'CheckOut',
                        textcolor: Colors.white,
                        fontsize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
