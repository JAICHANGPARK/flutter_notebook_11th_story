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
                height: MediaQuery.of(context).size.height / 3,
                color: Colors.grey[200],
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              height: MediaQuery.of(context).size.height / 1.7,
              child: Column(
                children: [
                  Container(
                    height: 12,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),



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
