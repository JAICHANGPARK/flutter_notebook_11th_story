import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_11th_story/ep701_clubhouse/ui/clubhouse_style.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController bioTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.settings_outlined),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height / 1.1,
                      decoration: BoxDecoration(
                        color: ClubhouseStyle.appBackgroundColor,
                      ),
                      child: Column(
                        children: [],
                      ),
                    );
                  },
                );
              })
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(32)
                ),
              ),
              Row(
                children: [
                  Text("Dreamwalker"),
                  Text("(Flutter)")
                ],
              ),
              Text("@iamdreamwalker"),
              Row(
                children: [
                  Text("1.2k"),
                  Text("followers"),
                  Text("1.2k"),
                  Text("following"),
                ],
              ),
              Flexible(child: GestureDetector(

                  onTap: (){
                    showModalBottomSheet(context: context, builder: (context){
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        child: Center(
                          child: Column(
                            children: [

                            ],
                          ),
                        ),
                      );
                    });
                  },
                  child: Text(""))),

              Row(
                children: [
                  Text("Add to Instagram"),
                  Text("Add to Twitter"),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                  ),
                  Column(
                    children: [
                      Text("Joined Feb 1, 2021"),
                      Text("Nominated by Unknown")
                    ],
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


















