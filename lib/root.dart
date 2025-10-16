import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/cart/views/cart_view.dart';
import 'package:hungr/features/chechout/views/checkout_veiw.dart';
import 'package:hungr/features/home/views/home_view.dart';
import 'package:hungr/features/orderHistory/views/orderHistory_veiw.dart';
class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controoler;
  late List<Widget> screens;
  int currentScreen=0;
  @override


  void initState() {
    screens=[
    HomeView(),
    CartView(),
    OrderhistoryVeiw(),
    CheckoutVeiw()
    ];
    controoler=PageController(initialPage:currentScreen);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controoler,
        onPageChanged:(index){
        setState(() {
        currentScreen=index;
        });
        },
        children: screens,
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
        ),
        child: BottomNavigationBar(
          iconSize: 35,
          elevation: 0,
          backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.shade700,
        currentIndex: currentScreen,
            onTap:(index){
              setState(() {
                currentScreen=index;
              });
              controoler.jumpToPage(currentScreen);
            },

            items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.local_restaurant_sharp),label: 'Order History'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: 'Profile'),
            ]),
      ),
    );
  }
}
