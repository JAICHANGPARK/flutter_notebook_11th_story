import 'package:flutter/material.dart';

class FoodOrderPage extends StatefulWidget {
  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                      Text("Order details"),
                      IconButton(onPressed: (){}, icon: Icon(Icons.info))
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                )),
            Expanded(flex: 10, child: Placeholder()),
            Expanded(flex: 2, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
