import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Blue Yutte",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 64,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.star, color: Colors.yellow, size: 14),
                            Text(
                              "4.7",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        "Color",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "),
                  SizedBox(height: 24),
                  Text.rich(
                    TextSpan(
                      children:[
                        TextSpan( text: "\$200", style: TextStyle(
                          fontSize: 24,
                        )),
                        TextSpan( text: ".00"),
                      ]
                    )
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
