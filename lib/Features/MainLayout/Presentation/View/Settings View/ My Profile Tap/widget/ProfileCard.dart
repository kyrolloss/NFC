import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Settings%20View/%20My%20Profile%20Tap/widget/My%20Profile%20Row/My%20Profile%20Row.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * .25,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: height * .025,
            right: width * .04,
            left: width * .04,
            child: Container(
              height: height * .2,
              width: width * .9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1.5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: MyProfileRow(),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   const Spacer(
                     flex: 1,
                   ),
                   Container(
                     width: double.infinity,
                     height: 1,
                     color: Colors.grey[300],
                   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                          },
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit, size: width*.06, color: Colors.black),
                              const SizedBox(width: 5),
                              Text(
                                'Edit Profile',
                                style: TextStyle(
                                  fontSize: width*.04,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Vertical divider between sections
                      Container(
                        width: 1,
                        height: height *.05,
                        color: Colors.grey[300],
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                          },
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_circle,
                                  size: width*.06, color: Colors.green),
                              SizedBox(width: 5),
                              Text(
                                'Activated',
                                style: TextStyle(
                                  fontSize:
                                  width*.04,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: width * .35,
              left: width * .35,
              top: height * .005,
              child: Container(
                height: height * .05,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text(
                    'Selected',
                    style: TextStyle(
                        fontSize: width * .04,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )),
          Positioned(
              right: width * .07,
              top: height * .045,
              child: Container(
                height: height * .04,
                padding: EdgeInsets.symmetric(horizontal: width * .02),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black45, width: .5)),
                child: Center(
                  child: Text(
                    'Personal',
                    style: TextStyle(
                        fontSize: width * .04,
                        color: Colors.black38,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
