import 'package:flutter/material.dart';
import 'package:flutter_notebook_11th_story/ep735_furniture_app/ui/bubble_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_page.dart';

class FurnitureHomePage extends StatefulWidget {
  FurnitureHomePage({Key? key}) : super(key: key);

  @override
  _FurnitureHomePageState createState() => _FurnitureHomePageState();
}

class _FurnitureHomePageState extends State<FurnitureHomePage> with SingleTickerProviderStateMixin {
  Color mainColor = Color(0xff484c7F); // 72 76 127  48 4c 7F
  TextEditingController _textEditingController = TextEditingController();
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 72,
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: mainColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Welcome,",
                                    style: GoogleFonts.montserrat(fontSize: 12),
                                  ),
                                  Text(
                                    "Courtney Henry",
                                    style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 48,
                              width: 48,
                              child: Stack(
                                children: [
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      bottom: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.notifications_none),
                                        iconSize: 28,
                                        onPressed: () {},
                                      )),
                                  Positioned(
                                      top: 8,
                                      right: 8,
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor: Colors.red,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: TextField(
                                  controller: _textEditingController,
                                  decoration: InputDecoration(
                                      icon: Icon(
                                        Icons.search,
                                        size: 28,
                                      ),
                                      hintText: "search",
                                      hintStyle: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                                      border: InputBorder.none),
                                  onSubmitted: (s) {
                                    print(s);
                                  },
                                ),
                              ),
                              flex: 10,
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                child: IconButton(
                                  icon: Icon(Icons.settings_outlined),
                                  onPressed: () {},
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: TabBar(
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black,
                        indicator: BubbleTabIndicator(
                            indicatorHeight: 24,
                            indicatorColor: mainColor,
                            tabBarIndicatorSize: TabBarIndicatorSize.label),
                        tabs: [
                          Tab(
                            text: "Chair",
                          ),
                          Tab(
                            text: "All",
                          ),
                          Tab(
                            text: "Sofa",
                          ),
                          Tab(
                            text: "Table",
                          ),
                          Tab(
                            text: "Lamp",
                          ),
                          Tab(
                            text: "Furniture",
                          ),
                        ],
                      )),
                  Expanded(
                    flex: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 0.9,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2017/08/03/15/38/architecture-2576906_960_720.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.purple[50],
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.black,
                                              child: Icon(Icons.favorite_border),
                                            ),
                                            top: 8,
                                            right: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                    flex: 5,
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Black Chair",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$201.00",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold, color: Colors.grey),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 18,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(width: 16),
                                                Text("4.5"),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(builder: (context) =>
                                              FurnitureDetailPage()));
                                        },
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              "Buy",
                                              style: GoogleFonts.montserrat(color: Colors.white),
                                            ),
                                          ),
                                          decoration:
                                              BoxDecoration(color: mainColor, borderRadius: BorderRadius.circular(8)),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2017/08/03/15/38/architecture-2576906_960_720.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.purple[50],
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.red,
                                              child: Icon(Icons.favorite),
                                            ),
                                            top: 8,
                                            right: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                    flex: 5,
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Black Chair",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$201.00",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold, color: Colors.grey),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 18,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(width: 16),
                                                Text("4.5"),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Buy",
                                            style: GoogleFonts.montserrat(color: Colors.white),
                                          ),
                                        ),
                                        decoration:
                                            BoxDecoration(color: mainColor, borderRadius: BorderRadius.circular(8)),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2017/08/03/15/38/architecture-2576906_960_720.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.purple[50],
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.red,
                                              child: Icon(Icons.favorite),
                                            ),
                                            top: 8,
                                            right: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                    flex: 5,
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Black Chair",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$201.00",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold, color: Colors.grey),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 18,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(width: 16),
                                                Text("4.5"),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Buy",
                                            style: GoogleFonts.montserrat(color: Colors.white),
                                          ),
                                        ),
                                        decoration:
                                            BoxDecoration(color: mainColor, borderRadius: BorderRadius.circular(8)),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2017/08/03/15/38/architecture-2576906_960_720.jpg"),
                                              fit: BoxFit.cover),
                                          color: Colors.purple[50],
                                          borderRadius: BorderRadius.circular(8)),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            child: CircleAvatar(
                                              radius: 16,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.black,
                                              child: Icon(Icons.favorite_border),
                                            ),
                                            top: 8,
                                            right: 8,
                                          )
                                        ],
                                      ),
                                    ),
                                    flex: 5,
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 4),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Black Chair",
                                              style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$201.00",
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.bold, color: Colors.grey),
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  size: 18,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(width: 16),
                                                Text("4.5"),
                                              ],
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            "Buy",
                                            style: GoogleFonts.montserrat(color: Colors.white),
                                          ),
                                        ),
                                        decoration:
                                            BoxDecoration(color: mainColor, borderRadius: BorderRadius.circular(8)),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                    height: 72,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: Icon(Icons.home_filled),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: Icon(Icons.shopping_bag_outlined),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: Icon(Icons.star_border),
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: Icon(Icons.person_outline),
                          color: Colors.white,
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
