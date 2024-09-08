import 'package:flutter/material.dart';

class SwitchButton extends StatelessWidget {
  const SwitchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;

  return Container(
        width: width * .37,
        height: height * .045,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black54),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.autorenew_rounded,
              color: Colors.white,
              size: width * .06,
            ),
            SizedBox(width: width * .01,),
            Text(
              'Switch profile',
              style: TextStyle(
                  fontSize: width * .04,
                  color: Colors.white ,
                  fontWeight: FontWeight.w500
              ),
            ),

          ],
        ));
  }
}
