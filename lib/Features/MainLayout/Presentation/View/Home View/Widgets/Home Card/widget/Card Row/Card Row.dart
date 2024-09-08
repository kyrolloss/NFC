import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CardRow extends StatelessWidget {
  final String title;
  final Icon icon1;
  final Icon icon2;

  const CardRow(
      {super.key,
      required this.title,
      required this.icon1,
      required this.icon2
      });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: height*.06,
      width: width*.8,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black54),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon1,
            SizedBox(
              width: width * .01,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: width * .035,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: width * .01,
            ),
            icon2,
            const Spacer(),
            FlutterSwitch(
              activeColor: const Color(0xff916EEC),
              inactiveColor: Colors.grey.withOpacity(.2),
                width: width * .15,
                height: height * .04,
                valueFontSize: 12.0,
                toggleSize: 30.0,
                borderRadius: 30.0,
                padding: BorderSide.strokeAlignOutside,


                value: false,
                onToggle: (value) {})
          ],
        ),
      ),
    );
  }
}
