import 'package:components/Utilities/Icon_utilities.dart';
import 'package:components/src/alert_page.dart';
import 'package:flutter/material.dart';

import 'package:components/providers/menu_provider.dart';

class HomePageTemp extends StatelessWidget {
  final titles = ["A", "B", "C", "D", "E", "F", "G", "H", "I"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _list()
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

  List<Widget> _createListTitleWithMap() {
    var colorDivider = Color(0xFF717D7E);
    return titles.map((title) {
      return Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text('Esto es un $title'),
            leading: Icon(Icons.account_circle_rounded),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () { },
          ),
          Divider(color: colorDivider)
        ]
      );
    }).toList();
  }

  Widget _list() {

    return FutureBuilder(
      future: menuProvider.readFile(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> asyncSnapshot) {
          return ListView(
            children: _createListTitleFromFileData(asyncSnapshot.data, context),
          );
      }
    );
  }


  List<Widget> _createListTitleFromFileData(List<dynamic> data, BuildContext context) {
      menuProvider.readFile().then((value) {
        print (value);
      });

      var colorDivider = Color(0xFF717D7E);

      return data.map((path) {
          return Column(
            children: [
              ListTile(
                title: Text(path['texto']),
                leading: getIcon(path['icon']),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  _navigationWithPushName(context, path['ruta']);
                },
              ),
              Divider(color: colorDivider)
            ]
          );
      }).toList();
  }

  _navigation(BuildContext context) {
    Navigator.push(context, 
    MaterialPageRoute(builder: 
    (context) => AlertPage()));
  }

  _navigationWithPushName(BuildContext context, String pageName) {
    Navigator.pushNamed(context, pageName);
  }

}