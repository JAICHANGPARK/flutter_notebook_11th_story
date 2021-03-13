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
                child: Column(
              children: [],
            )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: SizedBox(
                height: 32,
                width: 160,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue
                  ),
                  child: Row(
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

            ),
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
