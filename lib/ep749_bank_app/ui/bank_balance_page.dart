import 'package:flutter/material.dart';

class BankBalancePage extends StatefulWidget {
  @override
  _BankBalancePageState createState() => _BankBalancePageState();
}

class _BankBalancePageState extends State<BankBalancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50]!,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 2, child: Row(
              children: [IconButton(onPressed: (){}, icon: Icon(Icons.menu))],
            )),
            Expanded(flex: 15, child: Placeholder()),
            Expanded(flex: 2, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
