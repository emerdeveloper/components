import 'package:flutter/material.dart';

import 'package:components/src/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Components",
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}