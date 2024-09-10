import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),

          SizedBox(
            height: height * .275,
            width: width ,
            child: const Image(
              image:
                  AssetImage('assets/images/no-data-concept-illustration.png'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: width * .7,
            child: Text(
              'You have no connections',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: width * .052,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: height * .01,
          ),
          SizedBox(
            width: width * .55,
            child: Text(
              'When you add connection it will show up here..',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: width * .0375,
                  color: Colors.grey,
                  fontWeight: FontWeight.w300),
            ),
          ),
          const Spacer(),
          Container(
            height: height * .065,
            width: width * .65,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purpleAccent.withOpacity(.8), Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: height * .045,
                    child: const Image(
                      image: AssetImage('assets/images/sparkle.png'),
                    ),
                  ),
                  SizedBox(
                    width: width*.01,
                  ),
                  Text(
                    'Scan Business Card',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * .04,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
