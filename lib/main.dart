import 'package:digital_wallet/screen/electric_bill_screen.dart';
import 'package:digital_wallet/screen/home_page.dart';
import 'package:digital_wallet/screen/send_money_screen.dart';
import 'package:digital_wallet/widget/numpad.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ElectricBillScreen(),
    );
  }
}
