import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
                  child: Swiper(itemCount: 4,
                    controller: SwiperController(

                    ),
                    pagination: SwiperPagination(
                    ),
                    itemBuilder: (context, index){
                    return Container(
                      padding: EdgeInsets.all(16),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24)
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                child:
                                Row(
                                  children: [
                                    Icon(Icons.monetization_on),
                                    Text("400 Points")
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Badge(
                                    child: Icon(Icons.settings_outlined),
                                    position: BadgePosition.bottomEnd(),
                                    padding: EdgeInsets.all(5.0),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 24,),
                          Text("Get Discount Up To",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text("30%",style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),),
                          Text("for local plane trip",style: TextStyle(
                          color: Colors.white,
                            fontSize: 12
                          ), )
                        ],
                      ),
                    );
                    },

                  ),
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
                  padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                  child: Column(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Upcoming Trip",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    Text(
                                      "You have 2 upcomming ticket",
                                      style: TextStyle(fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.greenAccent),
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 5,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[300],
                                    ),
                                    borderRadius: BorderRadius.circular(9)),
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Train",
                                          style: TextStyle(color: Colors.orange),
                                        ),
                                        Spacer(),
                                        Text(
                                          "2 Seats",
                                          style: TextStyle(color: Colors.orange),
                                        )
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey[300],
                                      thickness: 1.5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "MLG",
                                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Text(
                                                "03:18",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "May 10, 2021",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.greenAccent,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "JKT",
                                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Text(
                                                "08:40",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "May 10, 2021",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 1.5,
                                margin: EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey[300],
                                    ),
                                    borderRadius: BorderRadius.circular(9)),
                                padding: EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.train,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Train",
                                          style: TextStyle(color: Colors.orange),
                                        ),
                                        Spacer(),
                                        Text(
                                          "2 Seats",
                                          style: TextStyle(color: Colors.orange),
                                        )
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey[300],
                                      thickness: 1.5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "MLG",
                                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Text(
                                                "03:18",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "May 10, 2021",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.greenAccent,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "JKT",
                                              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 4),
                                              child: Text(
                                                "08:40",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "May 10, 2021",
                                              style: TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Top Destinations",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Recommended place for you",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )),
                      Expanded(flex: 10, child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return  Container(
                            width: 160,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                              borderRadius: BorderRadius.circular(8)
                            ),
                          );

                        },

                      )),
                    ],
                  ),
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
