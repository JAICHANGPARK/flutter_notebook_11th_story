import 'package:flutter/material.dart';

class OffersHomePage extends StatefulWidget {
  @override
  _OffersHomePageState createState() => _OffersHomePageState();
}

class _OffersHomePageState extends State<OffersHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Placeholder()),
            Expanded(
                flex:1,child: Placeholder()),
            Expanded(
                flex: 10,
                child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
