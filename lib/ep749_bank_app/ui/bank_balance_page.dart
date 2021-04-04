import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BankBalancePage extends StatefulWidget {
  @override
  _BankBalancePageState createState() => _BankBalancePageState();
}

class _BankBalancePageState extends State<BankBalancePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.red[50]!,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(Icons.menu)),
                      CircleAvatar(),
                    ],
                  ),
                )),
            Expanded(
                flex: 15,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Reports",
                            style: GoogleFonts.montserrat(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            "July 2021",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Expanded(child: Container(
                                        margin: EdgeInsets.symmetric(vertical: 8),
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                      )),
                                      Expanded(child: Padding(
                                        padding: const EdgeInsets.only(top: 16,  bottom: 16, left: 8),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Balance"),
                                            Text("\$14.938,51", style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),)

                                          ],
                                        ),
                                      )),
                                    ],
                                  )),
                              Expanded(flex: 8, child: Placeholder()),
                              Expanded(flex: 2, child: Placeholder()),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(9),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(36)),
              ),
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
