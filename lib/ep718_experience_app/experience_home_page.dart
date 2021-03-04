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
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 8,
                          child: Placeholder()),
                      SizedBox(width: 8,),
                      Expanded(
                          flex: 2,
                          child: Placeholder()),
                    ],
                  ),
                )),
            Expanded(flex: 8, child: Placeholder()),
            Expanded(flex: 4, child: Placeholder()),
            Expanded(flex: 2, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
