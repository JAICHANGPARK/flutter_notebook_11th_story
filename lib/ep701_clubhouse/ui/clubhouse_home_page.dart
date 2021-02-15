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
              left: 0,
              top: 0,
              right: 0,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  Spacer(),
                  IconButton(icon: Icon(Icons.mail_outline), onPressed: () {}),
                  IconButton(icon: Icon(Icons.calendar_today_outlined), onPressed: () {}),
                  Badge(
                    child: Icon(Icons.notifications_none),
                    badgeColor: Colors.red,
                  ),
                  CircleAvatar(

                  )
                ],
              ))
        ],
      )),
    );
  }
}
