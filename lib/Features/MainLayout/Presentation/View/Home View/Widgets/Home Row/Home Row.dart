import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: height* .095,
          width: width*.425,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: const Color(0xff916EEC),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  radius: width * .04,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.link)),
              SizedBox(
                width: width*.25,
                child: Text('Add New Link',style: TextStyle(fontSize: width*.05 , color: Colors.white , fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ),
        Container(
          height: height* .095,
          width: width*.425,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.add_circle , color: Colors.white, size: 30,),
              SizedBox(
                width: width*.3,
                child: Text('Active New Product',style: TextStyle(fontSize: width*.05 , color: Colors.white , fontWeight: FontWeight.w500),),
              )
            ],
          ),
        )
      ],
    );
  }
}
