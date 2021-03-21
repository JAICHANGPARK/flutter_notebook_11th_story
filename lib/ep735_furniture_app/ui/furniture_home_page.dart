import 'package:flutter/material.dart';

class FurnitureHomePage extends StatefulWidget {
  FurnitureHomePage({Key? key}) : super(key: key);

  @override
  _FurnitureHomePageState createState() => _FurnitureHomePageState();
}

class _FurnitureHomePageState extends State<FurnitureHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              right: 0,
              top: 0,
              child: Container(
                height: 72,
            decoration: BoxDecoration(
              color: Colors.indigo
            ),
          ))
        ],
      ),
    );
  }
}