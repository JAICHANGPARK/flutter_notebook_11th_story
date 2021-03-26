import 'package:flutter/material.dart';

class FurnitureDetailPage extends StatefulWidget {
  @override
  _FurnitureDetailPageState createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              top: 0,
              child: Container(
            height: MediaQuery.of(context).size.height / 4,
          )),
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: [
                  
                ],

              ),
            ),
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
