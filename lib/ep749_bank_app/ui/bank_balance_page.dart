import 'package:flutter/material.dart';

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
                          onPressed: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          icon: Icon(Icons.menu)),
                      CircleAvatar(),
                    ],
                  ),
                )),
            Expanded(flex: 15, child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Reports"),
                      Spacer(),
                      Text("July 2021"),
                      Icon(Icons.keyboard_arrow_down_outlined),
                    ],
                  ),
                  Expanded(child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Row(
                            children: [
                              Expanded(child: Placeholder()),
                              Expanded(child: Placeholder()),
                            ],
                          )),
                          Expanded(
                              flex: 8,
                              child: Placeholder()),
                          Expanded(
                              flex: 2,
                              child: Placeholder()),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: Colors.white,
                   borderRadius: BorderRadius.circular(36)
                  ),
                ),

            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
