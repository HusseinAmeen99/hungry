import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungr/core/constants/app_colors.dart';
import 'package:hungr/features/auth/widgets/custom_textfiled.dart';

import '../../../shared/custom_text.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
final TextEditingController _namecontroller=TextEditingController();
final TextEditingController _emailcontroller=TextEditingController();
final TextEditingController _addresscontroller=TextEditingController();

@override
  void initState() {
    _namecontroller.text='Admin';
    _emailcontroller.text='admin@email.com';
    _addresscontroller.text='admin address';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: Icon(Icons.settings,size: 35,),
           ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Gap(50),
            Center(
              ///user Image
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/splash/images/burger.png')),
                  border: Border.all(width: 4,color: AppColors.primaryColor),
                  //color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Gap(30),
            CustomTextfiled(labelText: 'Name', controller: _namecontroller),
            Gap(20),
            CustomTextfiled(labelText: 'Email', controller: _emailcontroller),
            Gap(20),
            CustomTextfiled(labelText: 'Address', controller: _addresscontroller),
            Gap(20),
            Divider(),
            Gap(20),
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
                text: '3366 **** 05050',
                textcolor: Colors.white,
                fontsize: 20,
                weight: FontWeight.bold,
              ),
              //trailing: Text('Default'),
              //onTap: () => setState(() => selectedMethod = 'visa'),
            ),
            Gap(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: CustomText(text: 'Edit Profile',fontsize: 18,)),
                ),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    border: Border.all(width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: CustomText(text: 'Log Out',fontsize: 18,textcolor: Colors.white,)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
