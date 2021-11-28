import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/widget/common_button.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:digital_wallet/widget/item_electric_bill.dart';
import 'package:flutter/material.dart';

class ElectricBillScreen extends StatelessWidget {
  const ElectricBillScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: 'Electric Bill', icon: Icons.arrow_back, color: kBodyColor),
      backgroundColor: kBodyColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 70.0,
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      '233.150',
                      style: fontPoppin.copyWith(
                          fontSize: 40, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text('Detail')
                  ],
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(
                height: 110.0,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      25,
                    ),
                    topRight: Radius.circular(
                      25,
                    ),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.625,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account Info',
                        style: fontPoppin,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ItemElectricBill(
                        title: 'Name',
                        value: 'Samantha',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ItemElectricBill(
                        title: 'Customer ID',
                        value: '0098 7485 1298',
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ItemElectricBill(
                        title: 'Month',
                        value: 'September 2020',
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Spacer(),
                      const CommonButton(
                        title: 'CONTINUE',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
