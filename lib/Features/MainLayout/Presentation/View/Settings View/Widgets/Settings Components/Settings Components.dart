import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/%20My%20Profile%20Tap/My%20Profile%20Tap.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/%20My%20Profile%20Tap/widget/ProfileCard.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/Account%20Information/Account%20Information.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/My%20Products%20Tap/My%20Products%20Tap.dart';
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
          children:  [
            CustomListItem(
              icon: Icons.person_outline_outlined,
              text: 'My Profiles',
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProfileTap()));
              },

            ),
            const Divider(),
             CustomListItem(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const BottomSheetContent(),
                  ),
                );
              },
              icon: Icons.note_outlined,
              text: 'Account Information',
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),
             CustomListItem(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyProductsTap()));
              },
              icon: Icons.credit_card_sharp,
              text: 'My Products',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),
            const CustomListItem(
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
