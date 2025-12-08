import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/features/auth/widgets/custom_btn.dart';
import 'package:hungr/shared/custom_text.dart';

import '../../../core/constants/app_colors.dart';
import '../widgets/order_details_widget.dart';

class CheckoutVeiw extends StatefulWidget {
  const CheckoutVeiw({super.key});

  @override
  State<CheckoutVeiw> createState() => _CheckoutVeiwState();
}

class _CheckoutVeiwState extends State<CheckoutVeiw> {
  String selectedMethod = 'cash';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Center(child: Text('Checkout Page')),
              CustomText(
                text: 'Order Summary',
                fontsize: 24,
                weight: FontWeight.bold,
              ),
              Gap(10),
              OrderDetailsWidget(
                order: '16.3',
                taxes: '5',
                fees: '0.3',
                total: '18.9',
              ),
              Gap(80),
              CustomText(
                text: 'Payment Method',
                fontsize: 24,
                weight: FontWeight.bold,
              ),
              Gap(20),

              ///cash
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                tileColor: Colors.amber,
                leading: Image.asset(
                  'assets/checkout_view/dollar Background Removed 1.png',
                  width: 100,
                  height: 100,
                ),
                title: CustomText(
                  text: 'Cash on Delivery',
                  fontsize: 20,
                  weight: FontWeight.bold,
                ),
                trailing: Radio<String>(
                  value: 'cash',
                  groupValue: selectedMethod,
                  activeColor: Colors.white,
                  onChanged: (v) {
                    setState(() {
                      selectedMethod = v!;
                    });
                  },
                ),
                onTap: () => setState(() => selectedMethod = 'cash'),
              ),
              Gap(5),

              ///visa
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 5),
                tileColor: Colors.red.shade400,
                leading: Image.asset(
                  'assets/checkout_view/symbols.png',
                  width: 100,
                  height: 80,
                ),
                title: CustomText(
                  text: 'Debit card',
                  textcolor: Colors.white,
                  fontsize: 20,
                  weight: FontWeight.bold,
                ),
                subtitle: CustomText(
                  text: '3366 **** **** 05050',
                  textcolor: Colors.white,
                  fontsize: 20,
                  weight: FontWeight.bold,
                ),
                trailing: Radio<String>(
                  value: 'visa',
                  groupValue: selectedMethod,
                  activeColor: Colors.white,
                  onChanged: (v) {
                    setState(() {
                      selectedMethod = v!;
                    });
                  },
                ),
                onTap: () => setState(() => selectedMethod = 'visa'),
              ),
              Gap(5),

              ///checkbox
              Row(
                children: [
                  Checkbox(
                    onChanged: (v) {},
                    activeColor: Colors.red,
                    value: true,
                  ),
                  CustomText(text: 'Save card details for future payments'),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusGeometry.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15,
              offset: Offset(0, 0),
            )
          ]
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Total',
                    fontsize: 22,
                    textcolor: Colors.grey,
                  ),
                  CustomText(
                    text: '\$10.99',
                    fontsize: 26,
                  ),

                ],
              ),
              GestureDetector(
                child: Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  Center(
                    child: CustomText(
                      text: 'Pay Now',
                      textcolor: Colors.white,
                      fontsize: 18,
                    ),
                  ),
                ),
                onTap: (){

                  showDialog(context: context,
                      builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: Container(
                          width: 200,
                          height: 350,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: AppColors.primaryColor,
                                child: Icon(Icons.check,color: Colors.white,size: 50,),

                              ),
                              Gap(10),
                              CustomText(text: 'Success!',fontsize: 26,textcolor: AppColors.primaryColor,weight: FontWeight.bold,),
                              Gap(20),
                              CustomText(text: 'Your Payment was Successful\nA receipt has been sent to\nyour email',fontsize: 16,textcolor: Colors.grey,),
                              Gap(20),
                              ///Go Back
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 250,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child:  Center(
                                    child: CustomText(
                                      text: 'Go Back',
                                      textcolor: Colors.white,
                                      fontsize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    );

                      }
              );
              }),
            ],
          ),
        )
      ),
    );
  }
}
