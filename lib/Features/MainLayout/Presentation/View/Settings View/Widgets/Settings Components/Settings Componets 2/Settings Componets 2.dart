import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Share%20Components/widget/custom%20List%20Item.dart';

class SettingsComponents2 extends StatelessWidget {
  const SettingsComponents2({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: height*.42,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),

        ),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children:  [
            const CustomListItem(
              icon: Icons.info_outline_rounded,
              text: 'How To Use Skip Z',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),
            const CustomListItem(
              icon: Icons.lightbulb_outline,
              text: 'FAQ',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),            const CustomListItem(
              icon: Icons.translate,
              text: 'Languages',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),
            const Divider(),
            CustomListItem(
              icon: Icons.dark_mode_outlined,
              text: 'Dark Mode',
              trailing: SizedBox(
                width: width * .15,
                height: height * .04,
                child: FlutterSwitch(
                    activeColor:  const Color(0xff916EEC),
                    inactiveColor: Colors.grey.withOpacity(.2),
                    width: width * .15,
                    height: height * .04,
                    valueFontSize: 12.0,
                    toggleSize: 30.0,
                    borderRadius: 30.0,
                    padding: BorderSide.strokeAlignOutside,


                    value: false,
                    onToggle: (value) {}),
              ),
            ),

            const Divider(),
            const CustomListItem(
              icon: Icons.star_border_purple500_sharp,
              color: true,
              text: 'Review our App',
              trailing: Icon(Icons.chevron_right, color: Colors.grey),
            ),

          ],
        ),
      ),
    );
  }
}
