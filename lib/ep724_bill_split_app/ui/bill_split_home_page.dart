import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BillSplitHomePage extends StatefulWidget {
  @override
  _BillSplitHomePageState createState() => _BillSplitHomePageState();
}

class _BillSplitHomePageState extends State<BillSplitHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    PhysicalModel(

                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ofsp_ce",
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,
                        fontSize: 20),
                      ),
                    ),
                    CircleAvatar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
