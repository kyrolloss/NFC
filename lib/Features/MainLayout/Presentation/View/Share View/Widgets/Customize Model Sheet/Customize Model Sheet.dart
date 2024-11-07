import 'package:flutter/material.dart';
import 'package:nfc/Features/MainLayout/Presentation/View/Share%20View/Widgets/Customize%20Model%20Sheet/widget/Add%20Customization%20Comp/Add%20Customization%20Comp.dart';

class CustomizeModelSheet extends StatelessWidget {
  const CustomizeModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
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
            height: height * .02,
          ),

          Text(
            'Customize Your QR Code',
            style:  TextStyle(
                fontSize: width*.06,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: height * .04,
          ),
          Container(
              padding: const EdgeInsets.all(12),
              height: height * .4,
              width: width * .9,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black87),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: height * .9,
                    width: width*.9,
                    child: const Image(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/800px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      top: height * .14,
                      bottom: height * .14,
                      right: width * .285,
                      left: width * .285,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey
                          )
                        ),
                        child: CircleAvatar(

                          backgroundColor: Colors.white,
                          radius: width * .1,
                          child: Icon(
                            Icons.add_a_photo_outlined , color: Colors.grey,
                            size: width * .1,
                          ),
                        ),
                      ))
                ],
              )),
          SizedBox(
            height: height * .04,
          ),

          const AddCustomizationComp(),
          Container(
            margin: EdgeInsets.symmetric(vertical: height*.025 , horizontal: width*.05) , padding: EdgeInsets.all(12),
            width: width*.9,
            height: height*.07,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text('Save',style: TextStyle(color: Colors.white , fontSize: width*.04 , fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}
