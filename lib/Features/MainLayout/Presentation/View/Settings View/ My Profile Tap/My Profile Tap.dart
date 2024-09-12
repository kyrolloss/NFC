import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/%20My%20Profile%20Tap/widget/ProfileCard.dart';

class MyProfileTap extends StatelessWidget {
  const MyProfileTap({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profiles"),
        surfaceTintColor: Colors.transparent,

        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffF5F5F1),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfileCard(),
          const Spacer(),
          Container(
            height: height * .075,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              child:   Text(
                'Upgrade to add another profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: width * .045,
                    fontWeight: FontWeight.w400),
              )
            ),
          ),
          SizedBox(
            height: height*.025,
          ),


        ],
      ),
    );
  }
}
