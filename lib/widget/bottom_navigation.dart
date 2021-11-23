import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      alignment: Alignment.bottomCenter,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('images/Home.png'),
          Image.asset('images/Category.png'),
          Image.asset('images/Graph.png'),
          Image.asset('images/Setting.png'),
        ],
      ),
    );
  }
}
