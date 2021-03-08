import 'dart:async';

import 'package:flutter/material.dart';

class VpnHomePage extends StatefulWidget {
  @override
  _VpnHomePageState createState() => _VpnHomePageState();
}

class _VpnHomePageState extends State<VpnHomePage> {
  Timer connectionTimer;

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
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Text(
                        "Connected",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
                      )
                    ],
                  )),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your IP",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                      ),
                      Text(
                        "192.224.154.214",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 18),
                      )
                    ],
                  )),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Connection time",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Text(
                    "00:55",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ],
              ),
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
