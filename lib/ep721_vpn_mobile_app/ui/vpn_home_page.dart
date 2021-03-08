import 'dart:async';

import 'package:flutter/material.dart';

class VpnHomePage extends StatefulWidget {
  @override
  _VpnHomePageState createState() => _VpnHomePageState();
}

class _VpnHomePageState extends State<VpnHomePage> {
  Timer connectionTimer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
            ),
            Expanded(
              flex: 8,
              child: Center(
                child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.power_settings_new,
                            color: Colors.white,
                            size: 84,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text("🇺🇸", style: TextStyle(fontSize: 24)),
                      SizedBox(width: 16),
                      Text(
                        "United states",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
              ),
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
