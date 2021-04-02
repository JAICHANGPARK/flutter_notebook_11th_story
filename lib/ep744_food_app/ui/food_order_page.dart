import 'package:flutter/material.dart';

class FoodOrderPage extends StatefulWidget {
  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    )
                  ),
                )),
            Expanded(
                flex: 5,child: Column(
              children: [
                Text("Heaven's food"),
                Row(
                  children: [
                    Icon(Icons.timer),
                    Text("Delivery / As soons as possible"),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.timer),
                    Text("Delivery / As soons as possible"),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                )

              ],
            )),
            Expanded(
                flex: 10,
                child: Placeholder()),
            Expanded(
                flex: 2,
                child: Placeholder()),

          ],
        ),
      ),
    );
  }
}
