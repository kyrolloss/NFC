import 'package:flutter/material.dart';

class AnalyticalRow extends StatelessWidget {
  const AnalyticalRow({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height * .05,
        ),
        Row(
            children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: width * .05,
            child: Text(
              'Skip Z',
              style: TextStyle(color: Colors.white, fontSize: width * .03),
            ),
          ),
          SizedBox(
            width: width * .02,
          ),
          Text(
            'Kerollos Harby',
            style: TextStyle(
                color: Colors.black,
                fontSize: width * .04,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: width * .02,
          ),
          Text(
            'Switch Profile',
            style: TextStyle(
              color: Colors.grey,
              fontSize: width * .03,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,// Adds underline
              decorationStyle: TextDecorationStyle.solid, // Keeps the underline style solid
            ),
          )

        ]
        ),
        SizedBox(
          height: height * .025,
        ),
        Text('Performance',style: TextStyle(color: Colors.black,fontSize: width*.05,fontWeight: FontWeight.w700),),
        SizedBox(
          height: height * .02,
        ),
      ],
    );
  }
}
