import 'package:digital_wallet/constant/constant.dart';
import 'package:digital_wallet/model/shortcut_menu.dart';
import 'package:digital_wallet/model/transaction.dart';
import 'package:digital_wallet/widget/item_shortcut.dart';
import 'package:digital_wallet/widget/item_transaction.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0XFFF3F3F8),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 80.0),
                child: Text(
                  'Your Balance',
                  style: kBodyTextStyle,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                'Rp 8.250.000',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 36,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemShortcut(shortcutMenu: shortcutMenuList[0]),
                  ItemShortcut(shortcutMenu: shortcutMenuList[1]),
                  ItemShortcut(shortcutMenu: shortcutMenuList[2]),
                  ItemShortcut(shortcutMenu: shortcutMenuList[3]),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                        topLeft: Radius.circular(35))),
                padding: const EdgeInsets.only(left: 29, right: 29, top: 42),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Transaction'),
                    const SizedBox(
                      height: 34,
                    ),
                    SizedBox(
                      height: 282,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: transactionList.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            final Transaction transaction =
                                transactionList[index];
                            return ItemTransaction(transaction: transaction);
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
