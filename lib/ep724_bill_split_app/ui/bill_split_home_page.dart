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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    PhysicalModel(
                      color: Colors.black.withOpacity(0.3),
                      shape: BoxShape.circle,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        child: Icon(
                          Icons.pin_drop_outlined,
                          size: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "ofsp_ce",
                        style: GoogleFonts.montserrat(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Spacer(),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.orange[100],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "My Balance",
                    style: GoogleFonts.montserrat(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.white,
                        child: Icon(
                          Icons.attach_money,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "2870,86",
                        style: GoogleFonts.montserrat(fontSize: 32, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 16,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 72,
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                        ),
                        SizedBox(height: 12,),
                        Text("Total Bill", style: TextStyle(
                          fontSize: 16
                        ),),
                        Text("\$2870,86"),
                        SizedBox(height: 12,),
                        Container(
                          height: 48,
                          width: double.infinity,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                            color: Colors.orangeAccent
                          ),
                          child: Center(child: Text("Split Now",
                            style: GoogleFonts.montserrat(fontSize: 18, fontWeight: FontWeight.bold),)),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Container(
          height: 64,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
              SizedBox(
                width: 64,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.supervisor_account)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.qr_code_scanner),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
