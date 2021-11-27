import 'package:digital_wallet/constant/constant.dart';
import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final String image;
  final String name;
  final String value;
  late Widget widget;
  final Color color;

  CardProfile({
    Key? key,
    required this.name,
    required this.value,
    required this.image,
    this.widget = const SizedBox(),
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      height: 80,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Image.asset(image)),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name),
                  Text(value),
                ],
              ),
            ),
          ),
          Expanded(child: widget)
        ],
      ),
    );
  }
}
