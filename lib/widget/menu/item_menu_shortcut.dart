import 'package:digital_wallet/constant/constant.dart';
import 'package:flutter/material.dart';

class ItemMenuShortcut extends StatelessWidget {
  final String title;
  final String image;

  const ItemMenuShortcut({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: kBodyColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 16.0,
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 32,
              height: 32,
            ),
            const SizedBox(
              width: 16.0,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
