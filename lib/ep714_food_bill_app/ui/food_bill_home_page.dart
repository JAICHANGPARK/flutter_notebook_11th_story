import 'package:flutter/material.dart';

class FoodBillHomePage extends StatefulWidget {
  @override
  _FoodBillHomePageState createState() => _FoodBillHomePageState();
}

class _FoodBillHomePageState extends State<FoodBillHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Card(),
          )
        ],
      ),
    );
  }
}
