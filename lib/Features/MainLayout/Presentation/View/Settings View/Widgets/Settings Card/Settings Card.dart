import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'KerollosHarby29@gmail.com',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: width * .035),
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            SizedBox(
                              width: width * .65,
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        'Plan',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width * .04,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Free',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: width * .035),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * .07,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Products',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width * .04,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '0',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: width * .035),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * .07,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        'Profiles',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: width * .04,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: width * .035),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
