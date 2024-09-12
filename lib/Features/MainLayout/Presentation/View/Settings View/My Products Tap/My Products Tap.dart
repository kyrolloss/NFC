import 'package:flutter/material.dart';

class MyProductsTap extends StatelessWidget {
  const MyProductsTap({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Products"),
        surfaceTintColor: Colors.transparent,

        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffF5F5F1),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: height * .275,
              width: width*.85 ,
              child: const Image(
                image:
                AssetImage('assets/images/no-data-concept-illustration.png'),
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              width: width * .9,
              child: Text(
                "You haven't activated any products yet",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: width * .052,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Spacer(),
            Container(
              height: height * .075,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child:   Text(
                    'Buy New Products (20% OFF)',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * .045,
                        fontWeight: FontWeight.w400),
                  )
              ),
            ),
            SizedBox(
              height: height*.025,
            ),

          ],
        ),
      ),
    );
  }
}
