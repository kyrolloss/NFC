import 'package:flutter/material.dart';

class AddToHomeModelSheet extends StatelessWidget {
  const AddToHomeModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: height * .01,
          ),
      
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height * .005,
              width: width * .15,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
      
          SizedBox(
            height: height * .01,
          ),
          SizedBox(
            width: width*.7,

              child: Text('Add Your QR Code to Home Screen',
                textAlign : TextAlign.center,style: TextStyle(fontSize: width*.06 , color: Colors.black ),)),
          SizedBox(
            height: height * .025,
          ),
          SizedBox(
            width: width*.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1-Long Press on an empty space on your home screen',textAlign: TextAlign.start, style: TextStyle(fontSize: width*.04 , color: Colors.black45 ),),
                Text('2-Tap on "Widgets"',textAlign: TextAlign.start,style: TextStyle(fontSize: width*.04, color: Colors.black45 ),),
                Text('3-Browse the widget options and select tha widget you want',textAlign: TextAlign.start,style: TextStyle(fontSize: width*.04 , color: Colors.black45 ),),
                Text('4-Drag and drop the widget ',textAlign: TextAlign.start,style: TextStyle(fontSize: width*.04 , color: Colors.black45 ),),
                Text('5-Resize the widget if necessary',textAlign: TextAlign.start,style: TextStyle(fontSize: width*.04 , color: Colors.black45 ),),
                Text('6-Tap anywhere on the screen to save your changes',textAlign: TextAlign.start,style: TextStyle(fontSize: width*.04 , color: Colors.black45 ),),

              ],
            ),
          ),
          SizedBox(
            height: height * .05,
          ),
          InkWell(
            onTap:  (){Navigator.pop(context);},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: height*.025 , horizontal: width*.05) , padding: EdgeInsets.all(12),
              width: width*.9,
              height: height*.07,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text('Done',style: TextStyle(color: Colors.white , fontSize: width*.04 , fontWeight: FontWeight.bold),),
              ),
            ),
          )
      
        ],
      ),
    );
  }
}
