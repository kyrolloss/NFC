import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/Main%20Layout%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Analytics%20View/Analytics%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/%20My%20Profile%20Tap/My%20Profile%20Tap.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/My%20Products%20Tap/My%20Products%20Tap.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Settings%20View.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Share%20View.dart';

import 'Features/MainLayout/Presentation/View/Contacts View/Contacts View.dart';
import 'Features/MainLayout/Presentation/View/Home View/Home View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  ThemeData(
        scaffoldBackgroundColor: const Color(0xffF5F5F1),
      ),
      debugShowCheckedModeBanner: false,
      home:   SettingsView(),
    );
  }
}


