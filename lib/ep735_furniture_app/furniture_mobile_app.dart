import 'package:flutter/material.dart';

import 'ui/furniture_home_page.dart';


class FurnitureMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context)=>FurnitureHomePage()
      },
    );
  }
}
