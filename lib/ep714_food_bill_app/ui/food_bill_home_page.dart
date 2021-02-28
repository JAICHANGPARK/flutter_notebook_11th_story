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
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: SizedBox(
                height: 64,
                child: Card(
                  elevation: 8,
                  child: Row(
                    children: [

                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
