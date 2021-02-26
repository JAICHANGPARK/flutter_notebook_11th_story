import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TicketBookingHomePage extends StatefulWidget {
  @override
  _TicketBookingHomePageState createState() => _TicketBookingHomePageState();
}

class _TicketBookingHomePageState extends State<TicketBookingHomePage> {
  int pageIndex = 0;

  PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: PageView(controller: pageController, children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 4.8,
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.only(left: 16, right: 16, top: 8),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.orange[50],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.white,
                                    child: Text("😷"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Covid: Our Destination are Open to Travel!",
                                      style: TextStyle(color: Colors.orange, fontSize: 13, fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, border: Border.all(color: Colors.grey[200])),
                                    child: Center(
                                      child: Icon(
                                        Icons.airplanemode_on_sharp,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Plane",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, border: Border.all(color: Colors.grey[200])),
                                    child: Center(
                                      child: Icon(
                                        Icons.train,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Train",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, border: Border.all(color: Colors.grey[200])),
                                    child: Center(
                                      child: Icon(
                                        Icons.hotel,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Hotel",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, border: Border.all(color: Colors.grey[200])),
                                    child: Center(
                                      child: Icon(
                                        Icons.bus_alert,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Bus",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 58,
                                    width: 58,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, border: Border.all(color: Colors.grey[200])),
                                    child: Center(
                                      child: Icon(
                                        Icons.apps,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "More",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Column(
                    children: [
                      Expanded(
                          flex:2,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  
                                ],
                              )
                            ],
                          )),
                      Expanded(
                          flex: 4,
                          child: Placeholder()),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text("Page2"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Page3"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Page4"),
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (idx) {
          setState(() {
            pageIndex = idx;
          });
          pageController.jumpToPage(idx);
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
