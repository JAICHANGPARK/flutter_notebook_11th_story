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
              child: Placeholder(),
              flex: 5,
            ),
            Expanded(
              child: PhysicalModel(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Text("My Engagement", style: TextStyle(
                            fontSize: 16
                          ),),
                          Spacer(),
                          Container(
                            height: 2,
                            color: Colors.black,
                          )
                        ],
                      )),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Row(
                            children: [
                              Text("My Event", style: TextStyle(
                                  fontSize: 16
                              ),),
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
                            color: Colors.black,
                          )
                        ],
                      )),
                    ],
                  ),

                ),
                color: Colors.grey[200]!,
              ),
              flex: 1,
            ),
            Expanded(
              child: Placeholder(),
              flex: 8,
            ),
          ],
        ),
      ),
    );
  }
}
