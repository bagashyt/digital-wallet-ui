import 'package:digital_wallet/model/all_contact.dart';
import 'package:digital_wallet/model/recent_contact.dart';
import 'package:digital_wallet/widget/custom_appbar.dart';
import 'package:digital_wallet/widget/custom_searchbar.dart';
import 'package:digital_wallet/widget/item_contact.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Contact',
        icon: Icons.arrow_back,
        color: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 44.0,
                ),

                ///Search Bar
                CustomSearchBar(
                  colorFill: Colors.white,
                  colorBorder: Color(0XFFE7E7F6),
                ),
                SizedBox(
                  height: 36.0,
                ),

                ///List Recent Contact
                const Text('Recent Contact'),
                const SizedBox(
                  height: 15.0,
                ),
                LimitedBox(
                  maxHeight: 300.0,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: recentContactList.length,
                      itemBuilder: (BuildContext context, int index) {
                        RecentContact recentContact = recentContactList[index];
                        return ItemContact(
                            name: recentContact.name,
                            accountBank: recentContact.accountBank,
                            image: recentContact.image);
                      }),
                ),
                Container(
                  height: 1,
                  color: Color(0XFFE7E7F6),
                ),
                const SizedBox(
                  height: 15,
                ),

                ///List All Contact
                const Text('All Contact'),
                const SizedBox(
                  height: 15.0,
                ),
                LimitedBox(
                  maxHeight: 300.0,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: allContactList.length,
                      itemBuilder: (BuildContext context, int index) {
                        AllContact allContact = allContactList[index];
                        return ItemContact(
                            name: allContact.name,
                            accountBank: allContact.accountBank,
                            image: allContact.image);
                      }),
                ),
                Container(
                  height: 1,
                  color: Color(0XFFE7E7F6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
