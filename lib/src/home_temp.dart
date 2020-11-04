import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: ListView(
        children: <Widget>[
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
          Text("Hola Mundo"),
        ],
      )
    );
  }
}