import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/all_contact.dart';
import 'package:digital_wallet/model/recent_contact.dart';
import 'package:digital_wallet/widget/card_profile.dart';
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
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: CardProfile(
                  color: Colors.white,
                  name: allContactList[2].name,
                  value: allContactList[2].phone,
                  image: allContactList[2].image),
            ),
          ),
          Expanded(
              flex: 7,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Choose Package',
                      style: fontPoppin.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ItemCardInternetData(),
                    ItemCardInternetData(),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}

class ItemCardInternetData extends StatelessWidget {
  const ItemCardInternetData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 12,
                    ),
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      'images/transfer_icon.png',
                    ),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Text(
                      'Simple Package',
                      style: kValueTextStyle,
                    )),
                Expanded(
                    flex: 2,
                    child: Text(
                      'Rp. 50.000',
                      style: kPurpleTextStyle,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Colors.black54,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              '14 GB Internet + 2 GB Streaming, Active Period 30 days',
              style: fontPoppin.copyWith(
                color: kLiteColor,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
