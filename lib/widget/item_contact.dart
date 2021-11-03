import 'package:flutter/material.dart';

class ItemContact extends StatelessWidget {
  final String name;
  final String accountBank;
  final String image;

  const ItemContact(
      {Key? key,
      required this.name,
      required this.accountBank,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CircleAvatar(
              radius: 50,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  accountBank,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
