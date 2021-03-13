import 'package:flutter/material.dart';

class IrysHomePage extends StatefulWidget {
  @override
  _IrysHomePageState createState() => _IrysHomePageState();
}

class _IrysHomePageState extends State<IrysHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(child: Column(children: [
              
            ],)),
            Positioned(child: Card()),
          ],
        ),
      ),
    );
  }
}
