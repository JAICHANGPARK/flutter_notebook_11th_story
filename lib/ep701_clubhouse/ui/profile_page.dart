import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_11th_story/ep701_clubhouse/ui/clubhouse_style.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController bioTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) => Container(
                            height: MediaQuery.of(context).size.height / 1.09,
                            decoration: BoxDecoration(color: ClubhouseStyle.appBackgroundColor),
                          ));
                },
                child: Container(
                  height: 84,
                  width: 84,
                  decoration: BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(32)),
                ),
              ),
              Row(
                children: [Text("Dreamwalker"), Text("(Flutter)")],
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
              Flexible(
                  child: GestureDetector(
                      onTap: () async {
                        await showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Container(
                                height: MediaQuery.of(context).size.height / 1.1,
                                decoration: BoxDecoration(
                                    color: ClubhouseStyle.appBackgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16),
                                    )),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Update your bio",
                                        style: GoogleFonts.montserrat(fontSize: 16),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Container(
                                          height: 160,
                                          decoration: BoxDecoration(
                                              color: Colors.white, borderRadius: BorderRadius.circular(8)),
                                          padding: EdgeInsets.all(8),
                                          child: TextField(
                                            controller: bioTextEditingController,
                                            maxLines: null,
                                            keyboardType: TextInputType.multiline,
                                            style: GoogleFonts.montserrat(),
                                            decoration: InputDecoration(border: InputBorder.none),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Container(
                                          height: 42,
                                          width: 180,
                                          decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.blue),
                                          child: Center(
                                            child: Text(
                                              "Done",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });

                        setState(() {});
                      },
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bioTextEditingController.text.length > 0
                                ? TextField(
                                    decoration: InputDecoration(border: InputBorder.none),
                                    controller: bioTextEditingController,
                                    maxLines: null,
                                    keyboardType: TextInputType.multiline,
                                    enabled: false,
                                  )
                                : Text("Add your bio"),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Text("Joined Feb 1, 2021"), Text("Nominated by Unknown")],
                                )
                              ],
                            )
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
