import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/recent_contact.dart';
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
              child: SizedBox(
                height: 58.0,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child: Image.asset(recentContactList[0].image)),
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(recentContactList[0].name),
                          Text(recentContactList[0].accountBank),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 45,
              ),
            ),
            Expanded(
              child: Text(
                '150.000',
                style: TextStyle(fontSize: 50),
              ),
            ),
            // Expanded(
            //   child: SizedBox(
            //     height: 26.0,
            //   ),
            // ),
            Expanded(
              flex: 5,
              child: Numpad(),
            ),
            const Expanded(
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
