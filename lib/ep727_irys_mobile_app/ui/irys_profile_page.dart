import 'package:flutter/material.dart';

class IrysProfilePage extends StatefulWidget {
  @override
  _IrysProfilePageState createState() => _IrysProfilePageState();
}

class _IrysProfilePageState extends State<IrysProfilePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  children: [
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),
                  ],
                ),
              ),
              flex: 6,
            ),
            Expanded(
              child: PhysicalModel(
                color: Colors.grey[700]!,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _tabIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text(
                              "My Engagement",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              height: 2,
                              color: _tabIndex == 0 ? Colors.black : Colors.transparent,
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _tabIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "My Event",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.red,
                                  child: Text("3"),
                                  foregroundColor: Colors.white,
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 2,
                              color: _tabIndex == 1 ? Colors.black : Colors.transparent,
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Placeholder(),
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
