import 'package:flutter/material.dart';

import 'package:components/src/home_temp.dart';
import 'package:components/src/alert_page.dart';
import 'package:components/src/avatar_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Components",
      debugShowCheckedModeBanner: false,
      //home: HomePageTemp(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/'     : (BuildContext context) => HomePageTemp(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage()
      }
    );
  }
}