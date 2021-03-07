import 'package:flutter/material.dart';


class VpnHomePage extends StatefulWidget {
  @override
  _VpnHomePageState createState() => _VpnHomePageState();
}

class _VpnHomePageState extends State<VpnHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            ),
            Expanded(
              child: Placeholder(),
            ),

          ],
        ),
      ),
    );
  }
}
