import 'package:backdrop/backdrop.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clubhouse_style.dart';

class ClubhouseHomePage extends StatefulWidget {
  @override
  _ClubhouseHomePageState createState() => _ClubhouseHomePageState();
}

class _ClubhouseHomePageState extends State<ClubhouseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClubhouseStyle.appBackgroundColor,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
              left: 8,
              top: 0,
              right: 8,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.mail_outline), onPressed: () {}),
                  IconButton(icon: Icon(Icons.calendar_today_outlined), onPressed: () {}),
                  SizedBox(
                    width: 8,
                  ),
                  Badge(
                    child: Icon(Icons.notifications_none),
                    badgeColor: Colors.red,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(
                    radius: 14,
                  )
                ],
              )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ClubhouseStyle.appBackgroundColor,
                  ClubhouseStyle.appBackgroundColor.withOpacity(0.5),
                  Colors.white.withOpacity(0.2),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              ),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Color(0xffe6e4d6) // 230 228 214  e6 e4 d6,
                            ,
                            borderRadius: BorderRadius.circular(16)),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 3, child: Align(alignment: Alignment.centerRight, child: Text("9:30 PM",
                                style: TextStyle(
                                  color: Colors.brown[200]
                                ),))),
                                SizedBox(width: 8,),
                                Expanded(
                                    flex: 8,
                                    child: Text(
                                      "[Flutter] Dreamwalker Live talking show",
                                      overflow: TextOverflow.ellipsis,
                                    ))
                              ],
                            )
                          ],
                        ),
                      )),
                  Expanded(flex: 8, child: Placeholder())
                ],
              ),
            ),
            bottom: 100,
            left: 0,
            top: 48,
            right: 0,
          ),
          Positioned(
            child: Container(
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(
                          0,
                          -2,
                        ),
                        blurRadius: 3,
                        spreadRadius: 3)
                  ]),
            ),
            bottom: 0,
            left: 0,
            right: 0,
          ),
          Positioned(
            child: Row(
              children: [
                Spacer(),
                Container(
                  height: 36,
                  width: 140,
                  //TODO: Thank you @Furkan _
                  decoration: ShapeDecoration(color: Colors.green, shape: StadiumBorder()),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Start a room",
                          style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.apps),
                  onPressed: () {},
                  iconSize: 32,
                )
              ],
            ),
            bottom: 54,
            left: 64,
            right: 16,
          )
        ],
      )),
    );
  }
}
