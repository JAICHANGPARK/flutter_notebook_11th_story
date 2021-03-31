import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodHomePage extends StatefulWidget {
  FoodHomePage({Key? key}) : super(key: key);

  @override
  _FoodHomePageState createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  int _btmIndex = 0;

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PhysicalModel(
                  color: Colors.black.withOpacity(0.2),
                  elevation: 2,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                            children: [
                              Icon(Icons.location_pin, color: Colors.orange,),
                              Text("800 Cheese avenue, ", style: GoogleFonts.montserrat(

                              ),),
                              Text("NYC", style: GoogleFonts.montserrat(
                                color: Colors.grey
                              ),)
                            ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              
                            ),
                          ),
                        ),
                        SizedBox(height: 8,),

                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(child: Placeholder()),
                      Expanded(child: Placeholder()),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: PhysicalModel(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _btmIndex = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.home_outlined, size: 28, color: _btmIndex == 0 ? Colors.orange : Colors.grey),
                              Text(
                                "Home",
                                style: TextStyle(color: _btmIndex == 0 ? Colors.black : Colors.grey),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _btmIndex = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.shopping_cart_outlined,
                                  size: 28, color: _btmIndex == 1 ? Colors.orange : Colors.grey),
                              Text("Orders", style: TextStyle(color: _btmIndex == 1 ? Colors.black : Colors.grey))
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _btmIndex = 2;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_outline, size: 28, color: _btmIndex == 2 ? Colors.orange : Colors.grey),
                              Text(
                                "Profile",
                                style: TextStyle(color: _btmIndex == 2 ? Colors.black : Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
