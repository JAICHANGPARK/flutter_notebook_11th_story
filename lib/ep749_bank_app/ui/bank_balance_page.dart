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
      body: Stack(
        children: [
          Positioned(child: Placeholder(),)
        ],
      ),
    );
  }
}