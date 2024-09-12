import 'package:flutter/material.dart';

class MyProfileRow extends StatelessWidget {
  const MyProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: width * .09,
                  child: Text(
                    'Skip Z',
                    style: TextStyle(
                        color: Colors.white, fontSize: width * .05),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width * .02,
            ),
            SizedBox(
              width: width * .55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Kerollos Harby',
                      style: TextStyle(
                          color: Colors.black, fontSize: width * .05),
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
