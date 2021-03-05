import 'package:flutter/material.dart';

class ExperienceHomePage extends StatefulWidget {
  @override
  _ExperienceHomePageState createState() => _ExperienceHomePageState();
}

class _ExperienceHomePageState extends State<ExperienceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Friday, Fabruary 19",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "Hey there, Amy!",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 8,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[300]),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none, hintText: "Search anything...", icon: Icon(Icons.search)),
                            ),
                          )),
                      SizedBox(width: 16),
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [Colors.black, Colors.purple],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Center(
                              child: Icon(
                                Icons.tune,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ],
                  ),
                )),
            Expanded(flex: 8, child: Placeholder()),
            Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Categories",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )),
                      Expanded(flex: 6, child: ListView.builder(itemBuilder: (context, index){},
                      itemCount: 10,
                        scrollDirection: Axis.horizontal,
                      ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
