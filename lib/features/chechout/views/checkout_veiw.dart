import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/shared/custom_text.dart';

import '../widgets/order_details_widget.dart';

class CheckoutVeiw extends StatelessWidget {
  const CheckoutVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Center(child: Text('Checkout Page')),
            CustomText(text: 'Order Summary',fontsize: 24,weight: FontWeight.bold,),
            Gap(10),
            OrderDetailsWidget(order: '16.3',taxes:'5' ,fees: '0.3',total:'18.9' ,),
            Gap(80),
            CustomText(text: 'Payment Method',fontsize: 24,weight: FontWeight.bold,),
           Gap(20),
            ListTile(
              title: Text('Cash on Delivery'),
              trailing: Radio<String>(

                value: 'cash',

                onChanged: (v){},

              ),
            )
          ],
        ),
      ),
    );
  }
}

