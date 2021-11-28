import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/recent_contact.dart';
import 'package:digital_wallet/widget/card_profile.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:digital_wallet/widget/item_contact.dart';
import 'package:digital_wallet/widget/numpad.dart';
import 'package:digital_wallet/widget/slide_button.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends StatelessWidget {
  const SendMoneyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        color: Colors.white,
        icon: Icons.arrow_back,
        title: 'Send Money',
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: CardProfile(
                  color: kBodyColor,
                  image: recentContactList[0].image,
                  name: recentContactList[0].name,
                  value: recentContactList[0].accountBank,
                  widget: const Icon(Icons.expand_more),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  '150.000',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Numpad(),
            ),
            Expanded(
                flex: 2,
                child: SlideButton(
                  labelText: 'SWIPE TO SEND',
                ))
          ],
        ),
      ),
    );
  }
}
