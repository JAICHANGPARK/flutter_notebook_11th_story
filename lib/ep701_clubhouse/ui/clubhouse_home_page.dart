import 'package:badges/badges.dart';
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
            child: Placeholder(),
            bottom: 100,
            left: 8,
            top: 48,
            right: 8,
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
                      0, -2,
                    ),
                    blurRadius: 3,
                    spreadRadius: 3
                  )
                ]
              ),
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
                child: Row(
                  children: [
                    Icon(Icons.add),
                    Text("Start a room")
                  ],
                ),

              ),
               Spacer(),
               IconButton(icon: Icon(Icons.apps), onPressed: (){})
             ],
           ),
            bottom: 54,
            left: 16,
            right: 16,
          )
        ],
      )),
    );
  }
}
