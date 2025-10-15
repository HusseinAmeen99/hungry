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
        children: [
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primaryColor,
          items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          ]),
    );
  }
}
