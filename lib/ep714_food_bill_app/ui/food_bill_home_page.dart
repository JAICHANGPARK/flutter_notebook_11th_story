import 'package:flutter/material.dart';

class FoodBillHomePage extends StatefulWidget {
  @override
  _FoodBillHomePageState createState() => _FoodBillHomePageState();
}

class _FoodBillHomePageState extends State<FoodBillHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: MediaQuery.of(context).size.height / 1.3,
                color: Colors.grey,
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
              child: Container(
                width: 48,
                height: MediaQuery.of(context).size.height / 1.4,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                  ],
                ),
              ),
              left: 0,
              top: 0,

            ),
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: SizedBox(
                  height: 64,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    elevation: 8,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                          ),
                          Text("7 Items added", style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16
                          ),),
                          Spacer(),
                          Text("\$20", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,

                          ),),
                          SizedBox(width: 7,),
                          Container(
                            height: 48,
                            width: 48,

                            decoration: BoxDecoration(
                              color: Colors.grey
                            ),
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
}
