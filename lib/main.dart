import 'package:digital_wallet/model/shortcut_menu.dart';
import 'package:digital_wallet/screen/contact_screen.dart';
import 'package:digital_wallet/screen/home_page.dart';
import 'package:digital_wallet/screen/menu_screen.dart';
import 'package:digital_wallet/widget/item_shortcut.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
