import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Home%20View/Screens/Add%20New%20Link%20Screen/Add%20New%20Link%20Screen.dart';

class HomeRow extends StatelessWidget {
  const HomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  const CategoryScreen()));
          },
          child: Container(
            height: height* .095,
            width: width*.42,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xff916EEC),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: width * .037,
                    backgroundColor: Colors.white,
                    child: const Icon(Icons.link)),
                SizedBox(
                  width: width*.245,
                  child: Text('Add New Link',style: TextStyle(fontSize: width*.0475 , color: Colors.white , fontWeight: FontWeight.w500),),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: width*.02,
        ),
        Container(
          height: height* .095,
          width: width*.475,
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
