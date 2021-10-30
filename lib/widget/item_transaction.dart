import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/transaction.dart';
import 'package:flutter/material.dart';

class ItemTransaction extends StatelessWidget {
  final Transaction transaction;

  const ItemTransaction({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 17),
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              transaction.image,
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.name,
                  style: kTitleTextStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Nov 17',
                  style: kBodyTextStyle,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                transaction.price,
                style: kTitleTextStyle,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                transaction.merchant,
                style: kBodyTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
