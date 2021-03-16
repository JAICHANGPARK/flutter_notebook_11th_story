import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IrysProfilePage extends StatefulWidget {
  @override
  _IrysProfilePageState createState() => _IrysProfilePageState();
}

class _IrysProfilePageState extends State<IrysProfilePage> {
  int _tabIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 64,
                          width: 64,
                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, bottom: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Dreamwalker',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Text(
                                "Software Engineer",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                          color: Colors.grey,
                        ),
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(child: Placeholder()),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "500",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "75%",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Points Earned",
                                style: TextStyle(fontSize: 14, color: Colors.teal),
                              )
                            ],
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "35%",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                "Badge Collected",
                                style: TextStyle(fontSize: 14, color: Colors.purpleAccent),
                              )
                            ],
                          ),
                        ))
                      ],
                    )),
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: CircleAvatar(
                                  radius: 24,
                                ),
                              );
                            })),
                  ],
                ),
              ),
              flex: 6,
            ),
            Expanded(
              child: PhysicalModel(
                color: Colors.grey[700]!,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _tabIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text(
                              "My Engagement",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              height: 2,
                              color: _tabIndex == 0 ? Colors.black : Colors.transparent,
                            )
                          ],
                        ),
                      )),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _tabIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "My Event",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.red,
                                  child: Text("3"),
                                  foregroundColor: Colors.white,
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 2,
                              color: _tabIndex == 1 ? Colors.black : Colors.transparent,
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.filter_list),
                              SizedBox(
                                width: 8,
                              ),
                              Text("Open Filter"),
                            ],
                          )),
                      Expanded(
                          flex: 8,
                          child: ListView(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 16),
                                height: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          margin: EdgeInsets.all(7),
                                          decoration:
                                              BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(16)),
                                        )),
                                    Expanded(
                                        flex: 6,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Transportation",
                                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "3517 W, Gray St. Utica,\nPennsylvania 57867",
                                                style: TextStyle(fontSize: 12, color: Colors.grey),
                                              ),
                                              Row(
                                                children: [
                                                  Text("2 July 2020"),
                                                  Spacer(),
                                                  Text("+130 pts"),
                                                  SizedBox(width: 8),
                                                  Text("+1 badge"),
                                                ],
                                              )
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ],
              ),
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
