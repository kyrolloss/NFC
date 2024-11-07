import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Customize%20Model%20Sheet/Customize%20Model%20Sheet.dart';
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
          children:  [
            CustomListItem(
              onTap: (){
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
                    child: const CustomizeModelSheet()
                  ),
                );
              },
              icon: Icons.edit_outlined,
              text: 'Customize',
              trailing: const Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),
            const CustomListItem(
              icon: Icons.send_outlined,
              text: 'Share',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),
            const CustomListItem(
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
