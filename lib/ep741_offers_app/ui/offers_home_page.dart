import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersHomePage extends StatefulWidget {
  @override
  _OffersHomePageState createState() => _OffersHomePageState();
}

class _OffersHomePageState extends State<OffersHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Offers",
                      style: GoogleFonts.montserrat(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        width: 240,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                      ),
                      Spacer(),
                      Container(
                        width: 42,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: IconButton(
                            icon: Icon(Icons.swap_vert),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(height: 16),
              Expanded(
                  flex: 20,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 180,
                        child: PhysicalModel(
                          color: Colors.black.withOpacity(0.3),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(16),
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              children: [
                                Expanded(
                                    child: Container(
                                  child: Stack(
                                    children: [],
                                  ),
                                )),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Luxurt Apartment with River View"),
                                          Text("Grimm 12, 10115 Hamburg"),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 0,
                                      color: Colors.grey[200],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Icon(Icons.apps),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text("240 m^2"),
                                          ),
                                          Icon(Icons.airline_seat_legroom_extra),
                                          Text("5"),
                                          Icon(Icons.bathtub_outlined),
                                          Text("2"),
                                          Spacer(),
                                          Text("\$1.950/month"),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
