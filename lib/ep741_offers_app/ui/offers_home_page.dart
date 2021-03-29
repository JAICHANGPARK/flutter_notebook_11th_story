import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersHomePage extends StatefulWidget {
  @override
  _OffersHomePageState createState() => _OffersHomePageState();
}

class _OffersHomePageState extends State<OffersHomePage> {
  int tabIndex = 0;

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
                        child: tabIndex == 0
                            ? Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          tabIndex = 0;
                                        });
                                      },
                                      child: SizedBox(
                                        width: 120,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.black, borderRadius: BorderRadius.circular(16)),
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Properties",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.white.withOpacity(0.3),
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "12",
                                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          tabIndex = 1;
                                        });
                                      },
                                      child: SizedBox(
                                        width: 120,
                                        child: Container(
                                          decoration:
                                              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Viewings",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[300],
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "8",
                                                    style: TextStyle(color: Colors.black, fontSize: 12),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          tabIndex = 0;
                                        });
                                      },
                                      child: SizedBox(
                                        width: 120,
                                        child: Container(
                                          decoration:
                                              BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                          padding: EdgeInsets.symmetric(horizontal: 8),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Properties",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                height: 24,
                                                width: 24,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey[200],
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "12",
                                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: SizedBox(
                                      width: 120,
                                      child: Container(
                                        decoration:
                                            BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Viewings",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "8",
                                                  style: TextStyle(color: Colors.black, fontSize: 12),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: SizedBox(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          topLeft: Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_960_720.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 16,
                                            top: 16,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "NEW MATCH",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[400], borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "FLAT",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
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
                                            Text(
                                              "Luxurt Apartment with River View",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Grimm 12, 10115 Hamburg",
                                              style: GoogleFonts.montserrat(),
                                            )
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
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "240 m^2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.airline_seat_legroom_extra),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "5",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.bathtub_outlined),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "\$1.950/month",
                                              style: GoogleFonts.montserrat(),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: SizedBox(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          topLeft: Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_960_720.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 16,
                                            top: 16,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "NEW MATCH",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[400], borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "FLAT",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
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
                                            Text(
                                              "Luxurt Apartment with River View",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Grimm 12, 10115 Hamburg",
                                              style: GoogleFonts.montserrat(),
                                            )
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
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "240 m^2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.airline_seat_legroom_extra),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "5",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.bathtub_outlined),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "\$1.950/month",
                                              style: GoogleFonts.montserrat(),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: SizedBox(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          topLeft: Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_960_720.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 16,
                                            top: 16,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "NEW MATCH",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[400], borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "FLAT",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
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
                                            Text(
                                              "Luxurt Apartment with River View",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Grimm 12, 10115 Hamburg",
                                              style: GoogleFonts.montserrat(),
                                            )
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
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "240 m^2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.airline_seat_legroom_extra),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "5",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.bathtub_outlined),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "\$1.950/month",
                                              style: GoogleFonts.montserrat(),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: SizedBox(
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
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          topLeft: Radius.circular(16),
                                        ),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_960_720.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        )),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 16,
                                            top: 16,
                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.blue, borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "NEW MATCH",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                  padding: EdgeInsets.all(6),
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey[400], borderRadius: BorderRadius.circular(12)),
                                                  child: Center(
                                                    child: Text(
                                                      "FLAT",
                                                      style: GoogleFonts.montserrat(
                                                        color: Colors.black,
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
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
                                            Text(
                                              "Luxurt Apartment with River View",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Grimm 12, 10115 Hamburg",
                                              style: GoogleFonts.montserrat(),
                                            )
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
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "240 m^2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.airline_seat_legroom_extra),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "5",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Icon(Icons.bathtub_outlined),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "2",
                                                style: GoogleFonts.montserrat(),
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "\$1.950/month",
                                              style: GoogleFonts.montserrat(),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                                ],
                              ),
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
