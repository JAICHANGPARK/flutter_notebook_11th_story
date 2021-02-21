import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
          IconButton(icon: Icon(Icons.settings_outlined), onPressed: (){
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                );
            },

            );
          })
        ],
      ),

        body: SafeArea(

          child: Column(),
        ),
    );
  }
}
