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
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back)),
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Delivery / As soons as possible"),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.orange,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("800 Cheese avenue, NYC"),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 10,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your order",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "See more",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 4,
                        child: ListView.builder(itemBuilder: (context, index) {
                          return Container(
                            height: 120,
                            color: Colors.red,
                          );
                        })),
                    Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text("Subtotal", style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey
                              ),),
                              trailing: Text("\$37.50"),
                            ),
                            ListTile(
                                title: Text("Delivery", style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey
                                ),),
                                trailing: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration:
                                      BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey[300]),
                                  child: Text("Free"),
                                )),
                            ListTile(
                                title: Text("Total", style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                ),),
                                trailing: Text(
                                  "\$37.50",
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                ))
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Place order",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
