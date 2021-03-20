import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class RealEstateHomePage extends StatefulWidget {
  RealEstateHomePage({Key? key}) : super(key: key);

  @override
  _RealEstateHomePageState createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  int _bottomTabIndex = 0;
  int swipIndex = 1;
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.grey[50]!,
                  Colors.grey[100]!,
                  Colors.grey[200]!,
                  Colors.grey[300]!,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
              left: 0,
              bottom: 0,
              top: 0,
              right: 0,
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: PhysicalModel(
                  color: Colors.black.withOpacity(0.4),
                  elevation: 2,
                  child: Container(
                    height: 64,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _bottomTabIndex = 0;
                              });
                            },
                            icon: Icon(Icons.home)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _bottomTabIndex = 1;
                              });
                            },
                            icon: Icon(Icons.account_balance_wallet)),
                        SizedBox(
                          width: 100,
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _bottomTabIndex = 2;
                              });
                            },
                            icon: Icon(Icons.chat)),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _bottomTabIndex = 3;
                              });
                            },
                            icon: Icon(Icons.notifications)),
                      ],
                    ),
                  ),
                )),
            Positioned(
                left: 0,
                bottom: 92,
                right: 0,
                top: 0,
                child: Column(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
                          Badge(
                            child: Icon(
                              Icons.notifications_none,
                            ),
                            badgeContent: Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 7,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 8, left: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200]!,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: TextField(
                                    controller: _textEditingController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search",
                                      suffixIcon: Icon(Icons.search),
                                    ),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.brown,
                                ),
                                child: Center(
                                    child: Icon(
                                  Icons.tune,
                                  color: Colors.deepOrange,
                                )),
                              )),
                        ],
                      ),
                    )),
                    Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Swiper(
                            itemCount: 7,
                            viewportFraction: 0.65,
                            index: swipIndex,
                            onIndexChanged: (idx) {
                              setState(() {
                                swipIndex = idx;
                              });
                            },
                            scale: 0.9,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Expanded(child: Container(
                                        child: Stack(
                                          children: [
                                            Positioned(child: Container()),
                                          ],
                                        ),
                                      )),
                                      Expanded(child: Placeholder()),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                    Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Featured Property",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                child: PhysicalModel(
                                  color: Colors.grey[100]!,
                                  borderRadius: BorderRadius.circular(8),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.red,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2016/06/24/10/47/house-1477041_960_720.jpg"),
                                                    fit: BoxFit.cover),
                                                borderRadius: BorderRadius.circular(8)),
                                          ),
                                          flex: 4,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                          decoration: BoxDecoration(
                                                            color: Colors.grey[300],
                                                            borderRadius: BorderRadius.circular(16),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Icon(Icons.network_check),
                                                              Text(
                                                                "4 Network",
                                                                style: TextStyle(fontSize: 12),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        Container(
                                                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                          decoration: BoxDecoration(
                                                            color: Colors.red[300],
                                                            borderRadius: BorderRadius.circular(16),
                                                          ),
                                                          child: Row(
                                                            children: [
                                                              Icon(
                                                                Icons.supervisor_account,
                                                                color: Colors.red,
                                                              ),
                                                              Text(
                                                                "Family",
                                                                style: TextStyle(color: Colors.red, fontSize: 12),
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "425 Vine St #301, Seattle, WA",
                                                  style: TextStyle(fontSize: 14),
                                                ),
                                                Text(
                                                  "\$ 269,000",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.orangeAccent),
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [Text("2 Bathroom"), Text("2 Bedroom")],
                                                ),
                                                Text("1200 Sq. Fit")
                                              ],
                                            ),
                                          ),
                                          flex: 7,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                            ],
                          ),
                        )),
                  ],
                )),
            Positioned(
              child: FloatingActionButton(
                onPressed: () {},
              ),
              left: 0,
              right: 0,
              bottom: 32,
            )
          ],
        ),
      ),
    );
  }
}
