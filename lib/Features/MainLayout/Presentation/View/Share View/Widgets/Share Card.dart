import 'package:flutter/material.dart';

class ShareCard extends StatelessWidget {
  const ShareCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Card(
            color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 8.0),
                    child: Row(
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
                                  radius: width * .08,
                                  child: Text(
                                    'Skip Z',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: width * .05),
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
                                          color: Colors.black,
                                          fontSize: width * .05),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      'KerollosHarby29@gmail.com',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: width * .035),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black12,
                    endIndent: width * .05,
                    indent: width * .05,
                  ),
                  SizedBox(
                    height: height * .03,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: height * .45,
                        width: width * .9,
                        child: const Image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/800px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          top: height * .17,
                          bottom: height * .17,
                          right: width * .325,
                          left: width * .325,
                          child: Container(
                            height: height * .075,
                            width: width * .3,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Skip Z',
                                style: TextStyle(
                                    color: Colors.white, fontSize: width * .065 , fontWeight: FontWeight.bold),
                              ),
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
      ],
    );
  }
}
