import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height*.25,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: height*.025,
            right: width*.1,
            left: width*.1,
            child: Container(
              height: height*.2,
              width: width*.8,
              decoration: BoxDecoration(
                color:  Color(0xffF5F5F1),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black,
                  width: 2
                )
              ),

            ),
          ),
          Positioned(
              right: width*.35,
              left: width*.35,
              top: height*.01,
              child: Container(
            height: height*.05,
            width: width*.2,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ))
        ],
      ),
    );
  }
}
