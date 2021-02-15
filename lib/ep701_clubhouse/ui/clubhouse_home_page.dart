import 'package:flutter/material.dart';
import 'package:flutter_notebook_11th_story/ep701_clubhouse/ui/clubhouse_style.dart';

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
                IconButton(icon: Icon(Icons.search),)
              ],
            ))

          ],
        )
      ),
    );
  }
}
