import 'package:flutter/material.dart';

class TicketBookingHomePage extends StatefulWidget {
  @override
  _TicketBookingHomePageState createState() => _TicketBookingHomePageState();
}

class _TicketBookingHomePageState extends State<TicketBookingHomePage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.confirmation_num_outlined), label: "My Ticket"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings"),
        ],
      ),
    );
  }
}
