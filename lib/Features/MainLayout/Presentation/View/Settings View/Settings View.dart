import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Widgets/Settings%20Card/Settings%20Card.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Widgets/Settings%20Components/Settings%20Components.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Widgets/Settings%20Components/Settings%20Componets%202/Settings%20Componets%202.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Share%20Components/widget/custom%20List%20Item.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight:  height * .125,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: const Color(0xffF5F5F1),
          centerTitle: true,
          title: Text(
            'Skip Z',
            style: TextStyle(
                color: Colors.black,
                fontSize: width * .06,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                height: height * .05,
                width: width * .3,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  '+ UPGRADE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: width * .04,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * .005),
              const SettingsCard(),
              SizedBox(height: height * .03),
              SizedBox(
                width: width * .8,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Subscribe action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  label: Text(
                    'Active Your Product',
                    style: TextStyle(color: Colors.white, fontSize: width * .04),
                  ),
                ),
              ),
              const SettingsComponents(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'App Information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: width * .04,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              const SettingsComponents2(),
              SizedBox(height: height * .01),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: height * .06,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const CustomListItem(
                    icon: Icons.logout,
                    text: 'LogOut',
                    trailing: Icon(Icons.chevron_right, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: height * .01),
              SizedBox(
                width: width * .5,
                child: Text(
                  'Delete Your Account',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: width * .04,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,// Adds underline
                    decorationStyle: TextDecorationStyle.solid, // Keeps the underline style solid
                  ),
                ),
              ),
              SizedBox(
                width: width * .7,
                child: Text(
                  'Terms of Service & Privacy Policy',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: width * .042,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,// Adds underline
                    decorationStyle: TextDecorationStyle.solid, // Keeps the underline style solid
                  ),
                ),
              ),
              SizedBox(height: height * .01),
      
            ],
          ),
        ),
      ),
    );
  }
}
