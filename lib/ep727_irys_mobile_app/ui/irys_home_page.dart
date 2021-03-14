import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IrysHomePage extends StatefulWidget {
  @override
  _IrysHomePageState createState() => _IrysHomePageState();
}

class _IrysHomePageState extends State<IrysHomePage> with SingleTickerProviderStateMixin {
  int _viewTabIdx = 0;
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  Spacer(),
                                  Badge(
                                    child: Icon(Icons.notifications_none),
                                    alignment: Alignment.centerLeft,
                                    position: BadgePosition.topStart(),
                                    badgeContent: Text(
                                      "1",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi, Dreamwalker",
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(
                                    "Ready to shape our city better?",
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, bottom: 4, top: 4),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      width: 140,
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.calendar_today_outlined),
                                          Spacer(),
                                          Text(
                                            "Cityshaper",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Event",
                                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.greenAccent, borderRadius: BorderRadius.circular(8)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: Colors.lightGreenAccent, borderRadius: BorderRadius.circular(8)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: Colors.purpleAccent, borderRadius: BorderRadius.circular(8)),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(
                          text: "Feed",
                        ),
                        Tab(
                          text: "News",
                        )
                      ],
                    )),
                Expanded(
                    flex: 7,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.blue,
                        )
                      ],
                    )),
              ],
            )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 84),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _viewTabIdx = 0;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.list,
                                color: _viewTabIdx == 0 ? Colors.black : Colors.grey,
                              ),
                              Text(
                                "List View",
                                style: TextStyle(
                                  color: _viewTabIdx == 0 ? Colors.black : Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
                          child: VerticalDivider(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _viewTabIdx = 1;
                            });
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.map,
                                color: _viewTabIdx == 1 ? Colors.black : Colors.grey,
                              ),
                              Text(
                                "Map View",
                                style: TextStyle(
                                  color: _viewTabIdx == 1 ? Colors.black : Colors.grey,
                                ),
                              )
                            ],
                          ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.chat),
        foregroundColor: Colors.black,
      ),
    );
  }
}
