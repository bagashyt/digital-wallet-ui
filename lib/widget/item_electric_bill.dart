import 'package:digital_wallet/constant/constant.dart';
import 'package:flutter/material.dart';

class ItemElectricBill extends StatelessWidget {
  final String title;
  final String value;

  const ItemElectricBill({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset('images/grocery_icon.png'),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                SizedBox(
                  height: 5.0,
                ),
                Text(value),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Divider(
            height: 3,
            color: kBodyColor,
          ),
        )
      ],
    );
  }
}
