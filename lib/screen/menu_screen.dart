import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/other_menu.dart';
import 'package:digital_wallet/model/shortcut_menu.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:digital_wallet/widget/menu/item_menu_shortcut.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBodyColor,
      appBar: const CustomAppBar(
        icon: Icons.arrow_back,
        title: 'Menu',
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 12.0,
              ),

              ///Search Bar
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 32.0),
                child: const TextField(
                  decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 17.0),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0XFF2C3A4B),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.black),
                      filled: true,
                      fillColor: Color(0XFFE9E9F2)),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),

              ///List Shortcut
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Shortcut'),
                    Text('Costumize'),
                  ],
                ),
              ),
              LimitedBox(
                  maxHeight: 270,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: shortcutMenuList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final ShortcutMenu shortcutMenu =
                            shortcutMenuList[index];
                        return ItemMenuShortcut(
                            title: shortcutMenu.title,
                            image: shortcutMenu.images);
                      })),

              ///List Other Menu
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Other Menu'),
                  ],
                ),
              ),
              ItemMenuShortcut(
                  title: otherMenuList[0].title,
                  image: otherMenuList[0].images),
              ItemMenuShortcut(
                  title: otherMenuList[1].title,
                  image: otherMenuList[1].images),
              ItemMenuShortcut(
                  title: otherMenuList[2].title,
                  image: otherMenuList[2].images),
              ItemMenuShortcut(
                  title: otherMenuList[3].title,
                  image: otherMenuList[3].images),
            ],
          ),
        ),
      ),
    );
  }
}
