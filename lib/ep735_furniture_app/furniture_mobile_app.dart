import 'package:flutter/material.dart';


class FurnitureMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context)=>FurnitureHomePage()
      },
    );
  }
}
