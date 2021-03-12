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
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 72,
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 48,
                                top: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  radius: 20,
                                ),
                              ),
                              Positioned(
                                left: 48+20+48,
                                top: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  radius: 22,
                                ),
                              ),
                              Positioned(
                                left: 48+20+72,
                                top: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor: Colors.red[300],
                                ),
                              ),
                              Positioned(
                                right: 64,
                                top: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  radius: 22,
                                ),
                              ),
                              Positioned(
                                right: 48,
                                top: 0,
                                bottom: 0,
                                child: CircleAvatar(
                                  radius: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Total Bill",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "\$2870,86",
                          style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 48,
                          width: double.infinity,
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.orangeAccent[100]),
                          child: Center(
                              child: Text(
                            "Split Now",
                            style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Nearby Friends",
                  style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                          child: Stack(
                        children: [
                          Positioned(
                              top: 8,
                              right: 8,
                              bottom: 16,
                              left: 0,
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Albert", style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,

                                      ),),
                                    )
                                  ],
                                ),
                              )),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue[200],
                              foregroundColor: Colors.white,
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      )),
                      Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 8,
                                  right: 8,
                                  bottom: 16,
                                  left: 0,
                                  child: Container(
                                    decoration:
                                    BoxDecoration(

                                        color: Colors.yellow[300],

                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Albert", style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,

                                          ),),
                                        )
                                      ],
                                    ),
                                  )),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.yellow[200],
                                  foregroundColor: Colors.white,
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          child: Stack(
                            children: [
                              Positioned(
                                  top: 8,
                                  right: 8,
                                  bottom: 16,
                                  left: 0,
                                  child: Container(
                                    decoration:
                                    BoxDecoration(color: Colors.red[100], borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.white),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text("Albert", style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.bold,

                                          ),),
                                        )
                                      ],
                                    ),
                                  )),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.red[200],
                                  foregroundColor: Colors.white,
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  "Today Activity",
                  style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
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
