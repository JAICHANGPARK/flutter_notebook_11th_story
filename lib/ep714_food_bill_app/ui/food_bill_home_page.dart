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
          Positioned(child: Container(
            width: 48,
            color: Colors.black,
            height: MediaQuery.of(context).size.height / 1.2,

          ),
          left: 0,
          top: 16,
          ),
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
