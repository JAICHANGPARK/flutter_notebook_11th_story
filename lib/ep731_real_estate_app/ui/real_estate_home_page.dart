import 'package:flutter/material.dart';

class RealEstateHomePage extends StatefulWidget {
  RealEstateHomePage({Key? key}) : super(key: key);

  @override
  _RealEstateHomePageState createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.grey[300]!,
                  ],
                  begin: Alignment.topCenter
                )
              ),
            ),
            left: 0,
            bottom: 0,
            top: 0,
            right: 0,),
            Positioned(child: Container(
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white
              ),
            )),
          ],
        ),
      ),
    );
  }
}