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
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.grey[50]!,
                  Colors.grey[100]!,
                  Colors.grey[200]!,
                  Colors.grey[300]!,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
              left: 0,
              bottom: 0,
              top: 0,
              right: 0,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: PhysicalModel(
                  color: Colors.black.withOpacity(0.4),
                  elevation: 2,
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [],
                    ),
                  ),
                )),
            Positioned(
                left: 0,
                bottom: 92,
                right: 0,
                top: 0,
                child: Column(
                  children: [
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                    Expanded(flex: 6, child: Placeholder()),
                    Expanded(flex: 5, child: Placeholder()),
                  ],
                )),
            Positioned(child: FloatingActionButton(onPressed: () {  },),
            left: 0,
            right: 0,
            bottom: 32,)
          ],
        ),
      ),
    );
  }
}
