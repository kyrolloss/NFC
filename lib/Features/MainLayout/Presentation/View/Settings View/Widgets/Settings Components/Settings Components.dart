import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Share%20Components/widget/custom%20List%20Item.dart';

class SettingsComponents extends StatelessWidget {




  const SettingsComponents({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height*.32,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            CustomListItem(
              icon: Icons.person_outline_outlined,
              text: 'My Profiles',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            Divider(),
            CustomListItem(
              icon: Icons.note_outlined,
              text: 'Account Information',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            Divider(),
            CustomListItem(
              icon: Icons.credit_card_sharp,
              text: 'My Products',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            Divider(),
            CustomListItem(
                icon: Icons.shopify,
                text: 'Py New Product (20%OFF)',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),

          ],
        ),
      ),
    );
  }
}
