import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final titles = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: ListView(
        children: _createListTitle()
      )
    );
  }

  List<Widget> _createListTitle() {
    List<Widget> listTitle = List<Widget>();
    var colorDivider = Color(0xFF717D7E);

    for (var title in titles) {
      var widgetTitle = ListTile(
        title: Text(title)
      );
      listTitle..add(widgetTitle)
              ..add(Divider(color: colorDivider));
    }

    return listTitle;
  }

}