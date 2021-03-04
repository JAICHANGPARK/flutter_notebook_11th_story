import 'package:flutter/material.dart';

class ExperienceHomePage extends StatefulWidget {
  @override
  _ExperienceHomePageState createState() => _ExperienceHomePageState();
}

class _ExperienceHomePageState extends State<ExperienceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Friday, Fabruary 19"),
                    Text("Hey there, Amy!"),
                  ],
                )),
            Expanded(flex: 2, child: Placeholder()),
            Expanded(flex: 6, child: Placeholder()),
            Expanded(flex: 3, child: Placeholder()),
            Expanded(flex: 2, child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
