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
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}