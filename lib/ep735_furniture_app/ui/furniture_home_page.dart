import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FurnitureHomePage extends StatefulWidget {
  FurnitureHomePage({Key? key}) : super(key: key);

  @override
  _FurnitureHomePageState createState() => _FurnitureHomePageState();
}

class _FurnitureHomePageState extends State<FurnitureHomePage> {
  Color mainColor = Color(0xff484c7F); // 72 76 127  48 4c 7F
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 96,
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: mainColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome,",
                                    style: GoogleFonts.montserrat(fontSize: 12),
                                  ),
                                  Text(
                                    "Courtney Henry",
                                    style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 48,
                              width: 48,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.notifications_none),
                                        iconSize: 28,
                                        onPressed: () {},
                                      )),
                                  Positioned(
                                      top: 8,
                                      right: 8,
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.red,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.search,size: 28,),
                                    hintText: "search",
                                    hintStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                                    border: InputBorder.none
                                  ),

                                ),
                              ),
                              flex: 10,
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                              ),
                              flex: 2,
                            ),

                          ],
                        ),
                      )),
                  Expanded(flex: 1, child: Placeholder()),
                  Expanded(flex: 10, child: Placeholder()),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                    height: 72,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
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
      ),
    );
  }
}
