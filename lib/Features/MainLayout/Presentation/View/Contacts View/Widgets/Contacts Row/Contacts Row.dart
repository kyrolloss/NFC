import 'package:flutter/material.dart';

class ContactsRow extends StatelessWidget {
  const ContactsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(
          height: height *.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Contacts (0)',style: TextStyle(fontSize: width*.04 , color: Colors.black ),),
            Icon(Icons.open_in_browser_sharp , color: Colors.black, size: 30,)
          ],
        ),
        SizedBox(
          height: height *.03,
        ),
      ],
    );
  }
}
