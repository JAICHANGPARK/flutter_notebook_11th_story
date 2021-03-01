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
                color: Colors.black,
                height: MediaQuery.of(context).size.height / 1.4,
                child: Column(
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
                    elevation: 8,
                    child: Row(
                      children: [],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
