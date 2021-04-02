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
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                      Text(
                        "Order details",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.info))
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Heaven's food",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.orange,
                          ),
                          Text("Delivery / As soons as possible"),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.orange,
                          ),
                          Text("800 Cheese avenue, NYC"),
                          Spacer(),
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
