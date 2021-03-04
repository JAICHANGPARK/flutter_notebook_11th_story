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
          children: [
          Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
