import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Share%20Card/Share%20Card.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Share%20Components/Share%20Components.dart';

class ShareView extends StatelessWidget {
  const ShareView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight:  height * .125,
        elevation: 0,

        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color(0xffF5F5F5),
        title: Text(
          'My QR Code',
          style: TextStyle(
              fontSize: width * .05,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ShareCard(),

            ShareComponents()

          ],
        ),
      ),
    );
  }
}
