import 'package:flutter/cupertino.dart';
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
            Expanded(
                flex: 8,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 32,
                          right: 32,
                          top: 8,
                          bottom: 32,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.purple.withOpacity(0.4), borderRadius: BorderRadius.circular(24)),
                          )),
                      Positioned(
                          left: 16,
                          right: 16,
                          top: 8,
                          bottom: 48,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.purple.withOpacity(0.7), borderRadius: BorderRadius.circular(24)),
                          )),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 8,
                        bottom: 64,
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2018/05/30/15/39/thunderstorm-3441687_960_720.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),
                                      BlendMode.darken)),
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(24)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Night at the Forest",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "5 days - \$999 - April 2021",
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
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
                      Expanded(
                        flex: 6,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.grey[400])),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.green,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "Camping",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Text(
                                      "Meet the nature",
                                      style: TextStyle(fontSize: 12, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
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
