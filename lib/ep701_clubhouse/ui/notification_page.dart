import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool isEnterRoom = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("ACTIVITY",
            style: GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(
                height: 82,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: CircleAvatar()),
                    Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 10,
                                      child: Text.rich(TextSpan(children: [
                                        TextSpan(
                                            text: "Dreamwalker",
                                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: " just signed up for clubhouse Follow theme?",
                                            style: TextStyle(
                                              fontSize: 13,
                                            ))
                                      ])),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "36m ago",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.blue,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Follow",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white, letterSpacing: 1.3, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                          child: Container(
                                        decoration: ShapeDecoration(
                                          shape: StadiumBorder(),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Not yet, thx!",
                                            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 82,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 1, child: CircleAvatar()),
                    Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 10,
                                      child: Text.rich(TextSpan(children: [
                                        TextSpan(
                                            text: "Dreamwalker",
                                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text: " just signed up for clubhouse Follow theme?",
                                            style: TextStyle(
                                              fontSize: 13,
                                            ))
                                      ])),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            "36m ago",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.blue,
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Follow",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.white, letterSpacing: 1.3, fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 16,
                                      ),
                                      Expanded(
                                          child: Container(
                                        decoration: ShapeDecoration(
                                          shape: StadiumBorder(),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Not yet, thx!",
                                            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                indent: 48,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: "Dreamwalker", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: " just signed up for Clubhouse Free to welcome them in?",
                              style: TextStyle(
                                fontSize: 13,
                              ))
                        ])),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "36m ago",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: "Dreamwalker", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: " followed you",
                              style: TextStyle(
                                fontSize: 13,
                              ))
                        ])),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "36m ago",
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ),
              ...buildFollowUserList(3),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),
                    Expanded(
                      flex: 12,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(text: "Dreamwalker", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: " scheduled \"[Live] Flutter Light talking\" for"
                                  "Sunday, February 21 at 12:00 am",
                              style: TextStyle(
                                fontSize: 13,
                              ))
                        ])),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "5h ago",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ...buildFollowUserList(6),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildFollowUserList(int length) {
    return List.generate(
      length,
      (index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                child: Text.rich(TextSpan(children: [
                  TextSpan(text: "Dreamwalker", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " followed you",
                      style: TextStyle(
                        fontSize: 13,
                      ))
                ])),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "36m ago",
                style: TextStyle(fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
