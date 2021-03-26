import 'package:flutter/material.dart';

class FurnitureDetailPage extends StatefulWidget {
  @override
  _FurnitureDetailPageState createState() => _FurnitureDetailPageState();
}

class _FurnitureDetailPageState extends State<FurnitureDetailPage> {
  Color mainColor = Color(0xff484c7F); // 72 76 127  48 4c 7F
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
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child: Container(
                      height: 8,
                      width: 72,
                      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text(
                    "Blue Yutte",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 42,
                        width: 64,
                        decoration: BoxDecoration(
                          color: mainColor,
                        ),
                      )
                    ],
                  )
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
