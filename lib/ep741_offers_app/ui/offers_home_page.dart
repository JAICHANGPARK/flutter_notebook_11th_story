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
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Offers",
                      style: GoogleFonts.montserrat(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  )),
              Expanded(
                  flex:1,child: Placeholder()),
              Expanded(
                  flex: 10,
                  child: Placeholder()),
            ],
          ),
        ),
      ),
    );
  }
}
