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
              Row(
                children: [
                  CircleAvatar(),
                  Text("ofsp_ce", style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold
                  ),),
                  CircleAvatar(),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
