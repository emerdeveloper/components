
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];
  
  _MenuProvider() {
    readFile();
  }

  void readFile() {
    rootBundle.loadString('data/menu_opts.json')
              .then((data) => print(data));
  }
}

final menuProvider = _MenuProvider();