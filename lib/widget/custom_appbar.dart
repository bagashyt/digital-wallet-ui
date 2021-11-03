import 'package:digital_wallet/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  final Color color;

  const CustomAppBar(
      {Key? key, required this.title, required this.icon, required this.color})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, top: 62.0),
      child: AppBar(
        elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: color,
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          title,
          style: kScreenTitleTextStyle,
        ),
      ),
    );
  }
}
