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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                SizedBox(
                  height: 72,
                  child: Container(
                    color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 1,
                            child: CircleAvatar()),
                        Expanded(
                            flex:10,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Placeholder(),
                                ),
                                Expanded(
                                  child: Placeholder(),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}






















