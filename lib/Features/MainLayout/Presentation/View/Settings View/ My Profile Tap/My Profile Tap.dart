import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/%20My%20Profile%20Tap/widget/ProfileCard.dart';

class MyProfileTap extends StatelessWidget {
  const MyProfileTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profiles"),
        surfaceTintColor: Colors.transparent,

        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffF5F5F1),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileCard()
        ],
      ),
    );
  }
}
