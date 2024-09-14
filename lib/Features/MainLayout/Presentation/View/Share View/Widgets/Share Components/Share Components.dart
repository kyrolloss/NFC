import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Share%20Components/widget/custom%20List%20Item.dart';

class ShareComponents extends StatelessWidget {
  const ShareComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height*.25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CustomListItem(
              icon: Icons.edit_outlined,
              text: 'Customize',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            Divider(),
            CustomListItem(
              icon: Icons.send_outlined,
              text: 'Share',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            Divider(),
            CustomListItem(
              icon: Icons.home_outlined,
              text: 'Add to Home Screen',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),


          ],
        ),
      ),
    );
  }
}
