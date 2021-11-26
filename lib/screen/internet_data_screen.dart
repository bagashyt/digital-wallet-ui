import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class InternetDataScreen extends StatelessWidget {
  const InternetDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Internet Data',
        icon: Icons.arrow_back,
        color: kBodyColor,
      ),
      backgroundColor: kBodyColor,
    );
  }
}
