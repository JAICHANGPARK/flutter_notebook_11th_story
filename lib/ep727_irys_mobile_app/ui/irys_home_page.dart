import 'package:flutter/cupertino.dart';
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
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 64),
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.blueAccent
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [Icon(Icons.list), Text("List View")],
                    ),
                    Row(
                      children: [Icon(Icons.list), Text("List View")],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                child: Column(
              children: [
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),

              ],
            )),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.chat),
        foregroundColor: Colors.black,
      ),
    );
  }
}
