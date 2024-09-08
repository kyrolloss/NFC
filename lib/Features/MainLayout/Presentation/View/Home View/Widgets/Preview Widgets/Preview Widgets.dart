import 'package:flutter/material.dart';

class PreviewWidgets extends StatelessWidget {
  final String title;
  final IconData? icon1;
  final IconData? icon2;
  const PreviewWidgets({super.key, required this.title,  this.icon1,  this.icon2});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  Column(
      children: [
        SizedBox(
          height: height *.03,
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                 Icon(icon1 , color: Colors.black,size: 35,) ,
                SizedBox(width: width*.01,),
                Text(title,style: TextStyle(fontSize: width*.04 , color: Colors.black54 , fontWeight: FontWeight.bold),),
              ],
            ),
             Icon(icon2 , color: Colors.black, size: 30,)
          ],
        ),
        SizedBox(
          height: height *.03,
        ),
      ],
    );
  }
}
