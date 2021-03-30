import 'package:flutter/material.dart';

class FoodHomePage extends StatefulWidget {
  FoodHomePage({Key? key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(

        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Placeholder()),
            Expanded(
                flex: 10,
                child: Placeholder()),
            Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_outlined, size: 28,),
                          Text("Home")
                        ],
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}