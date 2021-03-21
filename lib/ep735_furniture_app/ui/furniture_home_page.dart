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
      backgroundColor: Colors.blueGrey[50],
      body: Stack(
        children: [
          Positioned(child: Column(
            children: [
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
              Expanded(child: Placeholder()),
            ],
          ),
          bottom: 96,),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                  height: 72,
                  decoration: BoxDecoration(color: Colors.indigo,
                  
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)
                  )),
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 32,
                        icon: Icon(Icons.home_filled),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 32,
                        icon: Icon(Icons.shopping_bag_outlined),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 32,
                        icon: Icon(Icons.star_border),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        iconSize: 32,
                        icon: Icon(Icons.person_outline),
                        color: Colors.white,
                      )
                    ],
                  )))
        ],
      ),
    );
  }
}
