import 'package:flutter/material.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(onTap: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back,color: Colors.black,fontWeight: FontWeight.bold,size: 30,)),
      ),
      body: Column(
        children: [

        ],
      ),

    );
  }
}
