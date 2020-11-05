
import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open
};

Icon getIcon(String inconName) {
  return Icon(_icons[inconName], color: Colors.blue);
}