import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/home/widget/card_home_view_items.dart';
import 'package:hungr/features/home/widget/card_item.dart';
import 'package:hungr/features/home/widget/food_category.dart';

import '../../../shared/custom_text.dart';
import '../../product/views/product_details_view.dart';
import '../widget/search_field.dart';
import '../widget/user_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CardHomeViewItems> CardHomeView = [
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger1.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger3.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger1.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger4.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger1.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger3.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger1.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
    CardHomeViewItems(
      image: 'assets/homeView/gridViewImage/burger4.png',
      title: 'Cheeseburger',
      description: 'Wendy\'s Burger',
      rate: '4.9',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ///Header
            SliverAppBar(
              pinned: true,
              elevation: 0,
              floating: false,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,
              toolbarHeight: 175,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
                child: Column(
                  children: [
                    Gap(20),
                    UserHeader(),
                    Gap(10),
                    SearchField(),
                  ],
                ),
              ),

            ),
            ///Search + Category
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                   //Gap(25),
                    ///search bar
                    //SearchField(),
                    //Gap(20),

                    ///category
                    FoodCategory(),
                    Gap(20),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: CardHomeView.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        mainAxisSpacing: 2,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsView(),));
                          },
                          child: CardItem(
                            image: CardHomeView[index].image,
                            title: CardHomeView[index].title,
                            description: CardHomeView[index].description,
                            rate: CardHomeView[index].rate,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
