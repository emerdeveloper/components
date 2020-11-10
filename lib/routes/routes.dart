import 'package:flutter/material.dart';

import 'package:components/src/alert_page.dart';
import 'package:components/src/avatar_page.dart';
import 'package:components/src/home_temp.dart';
import 'package:components/src/animate_container_page.dart';
import 'package:components/src/input_page.dart';
import 'package:components/src/card_page.dart';
import 'package:components/src/slider_page.dart';
import 'package:components/src/list_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
        '/'     : (BuildContext context) => HomePageTemp(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card'  : (BuildContext context) => CardPage(),
        'animateContainer': (BuildContext context) => AnimateContainerPage(),
        'input' : (BuildContext context) => InputPage(),
        'slider': (BuildContext context) => SliderPage(),
        'list'  : (BuildContext context) => ListPage()
      };
}