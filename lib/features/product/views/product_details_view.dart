import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/features/product/widgets/spicy_slider.dart';
import 'package:hungr/shared/custom_text.dart';

import '../../../core/constants/app_colors.dart';
import '../widgets/product_details_model.dart';

class ProductDetailsView extends StatefulWidget {
  ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = 0.5;
  List <ProductDetailsModel>toppings = [
    ProductDetailsModel(title: 'Tomato', image: 'assets/product_details_view/2.png',),
    ProductDetailsModel(title: 'Onions', image: 'assets/product_details_view/3.png',),
    ProductDetailsModel(title: 'Pickles', image: 'assets/product_details_view/4.png',),
    ProductDetailsModel(title: 'Bacons', image: 'assets/product_details_view/5.png',),
  ];

  List <ProductDetailsModel>SideOptions = [
    ProductDetailsModel(title: 'Fries', image: 'assets/product_details_view/1-1.png',),
    ProductDetailsModel(title: 'claslasw', image: 'assets/product_details_view/1-2.png',),
    ProductDetailsModel(title: 'salad', image: 'assets/product_details_view/1-3.png',),
    ProductDetailsModel(title: 'Onion', image: 'assets/product_details_view/1-4.png',),
  ];
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
            fontWeight: FontWeight.bold,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpicySlider(
              value: value,
              onChanged:
                  (c) => setState(() {
                    value = c;
                    print(value);
                  }),
            ),
            Gap(50),
            ///title of Toppings
            CustomText(text: 'Toppings',fontsize: 24,weight: FontWeight.bold,),
            Gap(10),
            ///Toppings
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children:List.generate(toppings.length, (index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 100,
                            height: 125,
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 6.0,
                                top: 70,
                                right: 5,
                              ),
                              child: Row(
                                children: [
                                  CustomText(
                                    text: toppings[index].title,
                                    textcolor: Colors.white,
                                    fontsize: 14,
                                    weight: FontWeight.bold,
                                  ),
                                  Spacer(),

                                  ///add Button
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Icon(Icons.add, size: 18, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            bottom: 50,
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                toppings[index].image,
                                fit: BoxFit.fitWidth,
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                  );
                }),
              ),
            ),
            Gap(40),
            CustomText(text: 'Side Options',fontsize: 24,weight: FontWeight.bold,),
            Gap(10),
            ///Side Options
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children:List.generate(toppings.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 125,
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 6.0,
                              top: 70,
                              right: 5,
                            ),
                            child: Row(
                              children: [
                                CustomText(
                                  text: SideOptions[index].title,
                                  textcolor: Colors.white,
                                  fontsize: 14,
                                  weight: FontWeight.bold,
                                ),
                                Spacer(),

                                ///add Button
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: Icon(Icons.add, size: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          left: 0,
                          bottom: 50,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              SideOptions[index].image,
                              fit: BoxFit.fitWidth,
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                      children: [
                        CustomText(text: 'Total',fontsize: 22,textcolor: Colors.grey,),
                        Gap(10),
                        CustomText(text: '\$10.99',fontsize: 26,),
                      ]
                  ),
                  Spacer(),
                  Container(
                    width: 150,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(child: CustomText(text: 'Add to Cart',textcolor: Colors.white,fontsize: 18,)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
