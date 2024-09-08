import 'package:flutter/material.dart';
import 'package:fw_tab_bar/fw_tab_bar.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Widgets/Preview%20Widgets/Preview%20Widgets.dart';

import 'Widgets/Contacts Row/Contacts Row.dart';
import 'Widgets/Search Row/Search Row.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ContactsRow(),
            const SearchRow(),
          SizedBox(
            width: width*.8,
            child: TabBarWidget(

              firstTab: 'Contacts',
              secondTab: 'Groups',
              onTabChanged: (int index) {
                debugPrint('Selected tab: $index');
              },
              selectedTabDecoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: const Border.fromBorderSide(BorderSide(color: Color(0xFFD9D9D9))),
                color: Colors.grey.withOpacity(.2),
              ),
              backgroundBoxDecoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                color: Color(0xFF2F2F2F),


              ),
              selectedTabTextStyle: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              unselectedTabTextStyle: const TextStyle(

                fontWeight: FontWeight.normal,
                color: Color(0xFF2F2F2F),
                fontSize: 16,
              ),
            ),
          )




          ],
        ),
      )
    );
  }
}
