import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../cart/views/cart_items.dart';
import '../widgets/card_items_orderhistory.dart';

class OrderhistoryVeiw extends StatefulWidget {
  const OrderhistoryVeiw({super.key});

  @override
  State<OrderhistoryVeiw> createState() => _OrderhistoryVeiwState();
}

class _OrderhistoryVeiwState extends State<OrderhistoryVeiw> {
  List<int> quantities = [1, 1, 1, 1, 1, 1];
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
                return CardItemsOrderhistory(
                  image: 'assets/homeView/gridViewImage/burger1.png',
                  title: '99 Grill',
                  Quantity: 'x2',
                  Price: '10\$',


                );
              },
                 ),)]))
    );
  }
}
