import 'package:backdrop/backdrop.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_notebook_11th_story/ep701_clubhouse/ui/notification_page.dart';
import 'package:flutter_notebook_11th_story/ep701_clubhouse/ui/profile_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

import 'clubhouse_style.dart';

class ClubhouseHomePage extends StatefulWidget {
  @override
  _ClubhouseHomePageState createState() => _ClubhouseHomePageState();
}

class _ClubhouseHomePageState extends State<ClubhouseHomePage> {
  final GlobalKey<InnerDrawerState> _innerDrawerKey = GlobalKey<InnerDrawerState>();
  bool isToggle = false;
  bool isEnter = false;
  bool isOpen = false;
  double roomBottomSheetHeight = 52.0;

  void _toggle() {
    _innerDrawerKey.currentState.toggle(direction: InnerDrawerDirection.end);
    setState(() {
      isToggle = !isToggle;
    });
  }

  Future onRefreshDrawerList() async {}

  Future onRefreshRoomList() async {
    await Future.delayed(Duration(seconds: 1));
  }

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
              child: isOpen ?
              buildOpenTopBarWidget():buildIdleTopBarWidget()),
          //TODO: ROOM LIST
          Positioned(
            bottom: 54,
            left: 0,
            top: 48,
            right: 0,
            child: InnerDrawer(
              key: _innerDrawerKey,
              rightAnimationType: InnerDrawerAnimation.linear,
              rightChild: RefreshIndicator(
                onRefresh: onRefreshDrawerList,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("AVAILABLE TO CHAT",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12, color: Colors.brown[200], fontWeight: FontWeight.bold))),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Divider(
                                height: 0,
                                thickness: 1.2,
                              ),
                            )),
                          ],
                        )),
                    Expanded(
                        flex: 15,
                        child: ListView.builder(itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 8, bottom: 8, right: 8),
                            child: Container(
                              height: 38,
                              decoration: BoxDecoration(),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.brown[400], borderRadius: BorderRadius.circular(12)),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.green[400],
                                                  border: Border.all(color: Colors.white, width: 1.5),
                                                  borderRadius: BorderRadius.circular(8)),
                                            ),
                                          )
                                        ],
                                      )),
                                  Expanded(
                                      flex: 9,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8, top: 4, bottom: 4),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Dreamwalker",
                                              style: GoogleFonts.montserrat(fontSize: 13),
                                            ),
                                            Text(
                                              "Flutter Live Coding",
                                              style: GoogleFonts.montserrat(fontSize: 11, color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                          color: Colors.green[100], borderRadius: BorderRadius.circular(12)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.add,
                                                color: Colors.green,
                                                size: 12,
                                              ),
                                              Text(
                                                "Room",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 10, color: Colors.green, fontWeight: FontWeight.bold),
                                              ),
                                              Icon(
                                                Icons.lock_rounded,
                                                color: Colors.green,
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
                  ],
                ),
              ),
              colorTransitionChild: Colors.transparent,
              colorTransitionScaffold: Colors.transparent,
              swipe: true,
              swipeChild: false,
              offset: IDOffset.horizontal(0.5),
              boxShadow: [],
              backgroundDecoration: BoxDecoration(
                color: ClubhouseStyle.appBackgroundColor,
              ),
              innerDrawerCallback: (b) {
                setState(() {
                  isToggle = b;
                });
              },
              scaffold: Scaffold(
                backgroundColor: ClubhouseStyle.appBackgroundColor,
                body: Stack(
                  children: [
                    Container(
                      child: RefreshIndicator(
                        onRefresh: onRefreshRoomList,
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Container(
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xffe6e4d6), // 230 228 214  e6 e4 d6,
                                      borderRadius: BorderRadius.circular(16)),
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Text(
                                                      "9:30 PM",
                                                      style: TextStyle(color: Colors.brown[200]),
                                                    ))),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Expanded(
                                                flex: 8,
                                                child: Text(
                                                  "[Flutter] Dreamwalker Live talking show",
                                                  overflow: TextOverflow.ellipsis,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Text(
                                                      "10:00 PM",
                                                      style: TextStyle(color: Colors.brown[200]),
                                                    ))),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Expanded(
                                                flex: 8,
                                                child: Text(
                                                  "[Flutter] Dreamwalker Live talking show",
                                                  overflow: TextOverflow.ellipsis,
                                                ))
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Row(
                                          children: [
                                            Expanded(
                                                flex: 2,
                                                child: Align(
                                                    alignment: Alignment.centerRight,
                                                    child: Text(
                                                      "10:30 PM",
                                                      style: TextStyle(color: Colors.brown[200]),
                                                    ))),
                                            SizedBox(
                                              width: 16,
                                            ),
                                            Expanded(
                                                flex: 8,
                                                child: Text(
                                                  "[Flutter] Dreamwalker Live talking show",
                                                  overflow: TextOverflow.ellipsis,
                                                ))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                child: Slidable(
                                  key: Key("${index + 1}"),
                                  actionPane: SlidableBehindActionPane(),
                                  actions: [
                                    IconSlideAction(
                                        caption: 'Hide',
                                        foregroundColor: Colors.black,
                                        iconWidget: Icon(
                                          Icons.remove_circle,
                                        ),
                                        color: Colors.transparent,
                                        onTap: () {}),
                                  ],
                                  child: Card(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Flutter Club",
                                              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  height: 72,
                                                  width: 64,
                                                  child: Stack(
                                                    children: [
                                                      Positioned(
                                                        top: 16,
                                                        left: 16,
                                                        child: Container(
                                                          height: 36,
                                                          width: 36,
                                                          decoration: BoxDecoration(
                                                              color: Colors.red,
                                                              borderRadius: BorderRadius.circular(8)),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 0,
                                                        left: 0,
                                                        child: Container(
                                                          height: 36,
                                                          width: 36,
                                                          decoration: BoxDecoration(
                                                              color: Colors.brown,
                                                              borderRadius: BorderRadius.circular(8)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 3,
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 8),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Text(
                                                            "Dreamwalker 💬",
                                                            style: GoogleFonts.montserrat(),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Text(
                                                            "Dreamwalker 💬",
                                                            style: GoogleFonts.montserrat(),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Text(
                                                            "Dreamwalker 💬",
                                                            style: GoogleFonts.montserrat(),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Text(
                                                            "Dreamwalker 💬",
                                                            style: GoogleFonts.montserrat(),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Text(
                                                            "Dreamwalker 💬",
                                                            style: GoogleFonts.montserrat(),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.symmetric(vertical: 4),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                "1.2k",
                                                                style: GoogleFonts.montserrat(color: Colors.grey),
                                                              ),
                                                              Icon(Icons.person, size: 16, color: Colors.grey),
                                                              SizedBox(
                                                                width: 8,
                                                              ),
                                                              Text(
                                                                "/   10",
                                                                style: GoogleFonts.montserrat(color: Colors.grey),
                                                              ),
                                                              Icon(Icons.chat_bubble, size: 16, color: Colors.grey)
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              ClubhouseStyle.appBackgroundColor,
                              ClubhouseStyle.appBackgroundColor.withOpacity(0.5),
                              Colors.white.withOpacity(0.2),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                    //TODO: button Start room and icon
                    Positioned(
                      bottom: 8,
                      left: 64,
                      right: 16,
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            height: 36,
                            width: 154,
                            //TODO: Thank you @Furkan _
                            decoration: ShapeDecoration(color: Colors.green, shape: StadiumBorder()),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Start a room",
                                      style: GoogleFonts.montserrat(fontSize: 16, color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          !isToggle
                              ? IconButton(
                                  icon: Icon(Icons.apps),
                                  onPressed: () {
                                    _toggle();
                                  },
                                  iconSize: 32,
                                )
                              : Container(
                                  height: 32,
                                  width: 32,
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //TODO: Gradient

          //TODO: Bottom sheet or back drop
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                if (!isOpen) {
                  isOpen = true;
                  roomBottomSheetHeight = MediaQuery.of(context).size.height / 1.16;
                } else {
                  // isOpen = false;
                  // roomBottomSheetHeight = 52.0;
                }
                setState(() {});
              },
              child: AnimatedContainer(
                height: roomBottomSheetHeight,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, -2),
                        blurRadius: 3,
                        spreadRadius: 3,
                      )
                    ]),
                padding: EdgeInsets.symmetric(horizontal: 16),
                duration: Duration(milliseconds: 250),
                child: isOpen
                    ? Column(
                        children: [
                          Expanded(
                              flex: 12,
                              child: Placeholder()),
                          Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  Container(
                                    width: 140,
                                    margin: EdgeInsets.symmetric(vertical: 12),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(24)
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("✌🏼 Leave quietly",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.red
                                          ),),

                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    foregroundColor: Colors.black87,
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(width: 12,),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: Text("✋🏼"),
                                  ),
                                ],
                              )),
                        ],
                      )
                    : buildHomeListWidget(),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget buildOpenTopBarWidget(){
    return Row(
      children: [
        IconButton(
          icon: Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            if(isOpen) {
              isOpen = false;
            }
            setState(() {
              roomBottomSheetHeight = 52.0;
            });
          },
        ),
        Text("All rooms", style: TextStyle(
          fontSize: 14,

        ),),
        Spacer(),
        IconButton(icon: Icon(Icons.description_outlined), onPressed: () {}),
        SizedBox(
          width: 8,
        ),

        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          child: CircleAvatar(
            radius: 14,
          ),
        )
      ],
    );
  }
  Widget buildIdleTopBarWidget(){
    return  Row(
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationPage()));
          },
          child: Badge(
            child: Icon(Icons.notifications_none),
            badgeColor: Colors.red,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
          },
          child: CircleAvatar(
            radius: 14,
          ),
        )
      ],
    );
  }
  Widget buildHomeListWidget(){
    return Row(
      children: [
        Expanded(
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 52,
                    bottom: 0,
                    child: CircleAvatar(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.grey,
                      child: Text(
                        "+632",
                        style: TextStyle(fontSize: 11),
                      ),
                    )),
                Positioned(top: 0, left: 24, bottom: 0, child: CircleAvatar()),
                Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      foregroundColor: Colors.brown,
                    )),
              ],
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Text("✌🏼"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(
              Icons.add,
              color: Colors.blueGrey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Text("✋🏼"),
          ),
        ),
      ],
    );
  }
}
