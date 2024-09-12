import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height*.005,
                width: width*.15,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: height * .035,
            ),
            Text(
              'Full Name',
              style: TextStyle(fontSize: width * .04, color: Colors.black),
            ),
            SizedBox(
              height: height * .01,
            ),
            TextFormField(
              initialValue: 'Kerollosh Harby',
              maxLength: 75,
              decoration: InputDecoration(
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black54),
                ),
              ),
            ),


            Text(
              'Email',
              style: TextStyle(fontSize: width * .04, color: Colors.black),
            ),
            SizedBox(
              height: height * .01,
            ),

            TextFormField(
              initialValue: 'kerollosharby29@gmail.com',
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: height * .025,
            ),
            Text(
              'Mobile',
              style: TextStyle(fontSize: width * .04, color: Colors.black),
            ),
            SizedBox(
              height: height * .01,
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 height: height*.075,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   border: Border.all(color: Colors.black54),

                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Row(
                     children: [
                       SizedBox(
                         width: width*.075,
                         height: height*.075,

                         child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUC8w15QGL9EmviUrxaVf-uN3P0Q2XI90lng&s')),
                       ),
                       SizedBox(
                         width: width*.02,
                       ),
                       Text('+20',style: TextStyle(color: Colors.black54),),
                     ],
                   ),
                 ),
               ),
               Container(
                 height: height*.075,
                 width: width*.7,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   border: Border.all(color: Colors.black54),

                 ),
                 child: Center(
                   child: TextFormField(

                     initialValue: '1205708870',
                     decoration: InputDecoration(

                       filled: true,
                       fillColor: Colors.white,
                       prefixIcon: const Icon(Icons.email),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(20),
                           borderSide: BorderSide.none),
                     ),
                   ),
                 ),
               ),
             ],
           ),
            const SizedBox(height: 30),

            // Reset Password Link
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Action for reset password
                },
                child:  Text(
                  'Reset Password',
                  style: TextStyle(
                    fontSize:  width*.05,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Save Button
            SizedBox(
              width: double.infinity,
              height: height*.075,
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
