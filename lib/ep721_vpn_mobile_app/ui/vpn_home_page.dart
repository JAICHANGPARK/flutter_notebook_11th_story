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
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(alignment: Alignment.centerLeft, child: Icon(Icons.menu)),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          "SoftVPN",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Text("Status"),
                      Text("Connected"),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Text("Your IP"),
                      Text("192.224.154.214")

                    ],
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 8,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
