import 'package:flutter/material.dart';

class FoodBillHomePage extends StatefulWidget {
  @override
  _FoodBillHomePageState createState() => _FoodBillHomePageState();
}

class _FoodBillHomePageState extends State<FoodBillHomePage> {
  int _navTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Colors Teste",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "1901 Thornridge Cir, Shilo, USA",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4.2,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/12/09/17/11/vegetables-1085063_960_720.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          width: 56,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                        right: 16,
                                        bottom: 16,
                                        top: 36,
                                      ),
                                      Positioned(
                                        child:CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          foregroundColor: Colors.white,
                                        ),
                                        left: 16,
                                        bottom: 16,

                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text(
                                      "Pancakes",
                                      style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          )),
                          SizedBox(
                            width: 24,
                          ),
                          Expanded(child: Placeholder()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              left: 64,
              right: 8,
              top: 24,
            ),
            Positioned(
              right: 8,
              top: 0,
              child: Text(
                "PROFILE",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              child: buildVerticalNavTabWidget(),
              left: -8,
              top: 0,
            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: SizedBox(
                  height: 64,
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 8,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                          ),
                          Text(
                            "7 Items added",
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            "\$20",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Container(
                            height: 42,
                            width: 42,
                            child: Center(
                              child: Icon(Icons.arrow_right),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(7),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget buildVerticalNavTabWidget() {
    return Container(
      width: 48,
      height: MediaQuery.of(context).size.height / 1.4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _navTabIndex = 0;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _navTabIndex == 0 ? Colors.black : Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "WE'RE GOING",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: _navTabIndex == 0 ? Colors.white : Colors.black),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _navTabIndex = 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _navTabIndex == 1 ? Colors.black : Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "FOOD ITEMS",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: _navTabIndex == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _navTabIndex = 2;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _navTabIndex == 2 ? Colors.black : Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "TOTAL BILLS",
                      style: TextStyle(
                          color: _navTabIndex == 2 ? Colors.white : Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _navTabIndex = 3;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: _navTabIndex == 3 ? Colors.black : Colors.white,
                    border: Border.all(
                      color: Colors.grey[400],
                    ),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16), bottomRight: Radius.circular(16))),
                child: Center(
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "FRIENDS",
                      style: TextStyle(
                          color: _navTabIndex == 3 ? Colors.white : Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
