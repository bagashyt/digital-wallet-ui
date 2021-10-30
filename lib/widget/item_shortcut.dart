import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/shortcut_menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemShortcut extends StatelessWidget {
  final ShortcutMenu shortcutMenu;

  const ItemShortcut({Key? key, required this.shortcutMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Image.asset(shortcutMenu.images),
          const SizedBox(
            height: 14.0,
          ),
          Text(shortcutMenu.title, style: kBodyTextStyle),
        ],
      ),
    );
  }
}
