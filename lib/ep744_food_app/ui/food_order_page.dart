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
                flex: 2,
                child: Placeholder()),
            Expanded(
                flex: 5,child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),

          ],
        ),
      ),
    );
  }
}
