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
              Expanded(flex: 20, child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
