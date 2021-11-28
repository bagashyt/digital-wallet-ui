import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/widget/card_profile.dart';
import 'package:digital_wallet/widget/common_button.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class WithdrawScreen extends StatefulWidget {
  WithdrawScreen({Key? key}) : super(key: key);

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  bool selected = false;

  Color _colorChange() {
    Color colour = kBodyColor;
    setState(() {
      (selected == false) ? colour : colour = Colors.blue;
    });
    return colour;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: 'Withdraw', icon: Icons.arrow_back, color: kBodyColor),
      backgroundColor: kBodyColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding, vertical: kHorizontalPadding),
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('150.000',
                        style: fontPoppin.copyWith(
                          fontSize: 50,
                          fontWeight: FontWeight.w400,
                        )),
                    Text(
                      'Your Balance Rp 8.500.000',
                      style: TextStyle(color: kLiteColor),
                    )
                  ],
                )),
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Text('Choose Bank Account'),
                    SizedBox(height: 28),
                    CardProfile(
                      name: 'Personal Account',
                      value: '**** - **** - 9876',
                      image: 'images/request_payment_icon.png',
                      color: Colors.white,
                    ),
                    CardProfile(
                      name: 'Personal Account',
                      value: '**** - **** - 9876',
                      image: 'images/request_payment_icon.png',
                      color: Colors.white,
                    ),
                    CardProfile(
                        name: 'Personal Account',
                        value: '**** - **** - 9876',
                        image: 'images/request_payment_icon.png',
                        color: Colors.white,
                        widget: GestureDetector(
                          onTap: () {
                            selected = true;
                          },
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: _colorChange(),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(child: CommonButton(title: 'CONTINUE'))
          ],
        ),
      )),
    );
  }
}
