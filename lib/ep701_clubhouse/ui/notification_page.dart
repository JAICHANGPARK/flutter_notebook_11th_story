import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("ACTIVITY",style: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black
        )),
      ),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 160,
                child: Container(
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: CircleAvatar()),
                      Expanded(child: Placeholder())
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}






















