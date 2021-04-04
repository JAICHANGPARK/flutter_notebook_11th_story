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
            Expanded(flex: 15, child: Placeholder()),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(9),
                  decoration: BoxDecoration(
                    color: Colors.white, 
                    borderRadius: BorderRadius.circular(24)
                  ),
                )),
            SizedBox(height: 16,)
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
