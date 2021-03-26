import 'package:flutter/material.dart';

class FurnitureDetailPage extends StatefulWidget {
  @override
  _FurnitureDetailPageState createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
              decoration: BoxDecoration(color: Colors.white),
              height: MediaQuery.of(context).size.height / 1.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Center(
                    child: Container(
                      height: 10,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(8)
                      ),
                    ),
                  ),
                  Text("Blue Yutte"),

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
