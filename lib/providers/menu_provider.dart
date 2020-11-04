
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];
  
  _MenuProvider();

  Future<List<dynamic>> readFile() async {

    var fileData = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(fileData);

    options = dataMap['rutas'];

    return options;
  }
}

final menuProvider = _MenuProvider();