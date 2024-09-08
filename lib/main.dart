import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: const Color(0xffF5F5F5),
      ),
      debugShowCheckedModeBanner: false,
      home: const ContactsView(),
    );
  }
}


