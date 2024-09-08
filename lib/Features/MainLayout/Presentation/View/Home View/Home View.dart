import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Widgets/Home%20Card/Home%20Card.dart';

import 'Widgets/Home Row/Home Row.dart';
import 'Widgets/Preview Widgets/Preview Widgets.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
             const PreviewWidgets(title: 'Preview', icon1: Icons.remove_red_eye, icon2: Icons.more_horiz),
            const HomeCard(),
            SizedBox(
              height: height * .02,
            ),
            const HomeRow(),
            SizedBox(
              height: height * .02,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My Links',style: TextStyle(fontSize: width*.05 , color: Colors.black , fontWeight: FontWeight.w500),),
                        Text('(0 Links)',style: TextStyle(fontSize: width*.04 , color: Colors.black38 , fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
            )),
            SizedBox(
              height: height * .02,
            ),


          ],
        ),
      ),
    );
  }
}
