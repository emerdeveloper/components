import 'package:flutter/material.dart';

import 'package:components/routes/routes.dart';

import 'package:components/src/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Components",
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
          print(' page Name ${settings.name}');
          return MaterialPageRoute(builder: (BuildContext context) => AlertPage());
      },
    );
  }
}