import 'package:flutter/material.dart';

class ContactsColumn extends StatelessWidget {
  const ContactsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: height * .02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height * .175,
                width: width * .425,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black, fontSize: width * .08 , fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: height * .025,
                      ),
                      const Divider(
                        color: Colors.black54,
                      ),
                      SizedBox(
                        height: height * .012,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye,
                            color: Colors.black54,
                            size: width * .06,
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          Text(
                            'Views',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: width * .035),
                          ),
                          const Spacer(),
                          const Icon(Icons.info_outline_rounded, color: Colors.grey,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: width*.005,
              ),
              Container(
                height: height * .175,
                width: width * .425,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '0',
                        style: TextStyle(
                            color: Colors.black, fontSize: width * .08 , fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: height * .025,
                      ),
                      const Divider(
                        color: Colors.black54,
                      ),
                      SizedBox(
                        height: height * .012,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.touch_app,
                            color: Colors.black54,
                            size: width * .06,
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          Text(
                            'Link Taps',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: width * .035),
                          ),
                          const Spacer(),
                          const Icon(Icons.info_outline_rounded, color: Colors.grey,)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * .02,
          ),
          Container(
              width: double.infinity,
              height: height*.225,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Apps Oversview', style: TextStyle(fontSize: width*.05, fontWeight: FontWeight.w600),),
                      Text("You haven't added any likes yet", style: TextStyle(fontSize: width*.035, fontWeight: FontWeight.normal , color: Colors.black87),),
                      Container(
                        height: height * .0575,
                        width: width * .375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: Text('Add Links', style: TextStyle(fontSize: width*.05, fontWeight: FontWeight.w600 , color: Colors.black
                          ),),
                        ),
                      ),
      
      
      
                    ],
                  ),
                ),
              )
          ),
          SizedBox(
            height: height * .02,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
      
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contact Engagement title
                const Text(
                  'Contact Engagement',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
      
                // List of contacts
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.lightBlue[50],
                    child: const Icon(Icons.phone_outlined, color: Colors.blue),
                  ),
                  title: const Text('Phone'),
                  trailing: const Icon(Icons.lock_outline), // Replace with actual data later
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange[50],
                    child: const Icon(Icons.email_outlined, color: Colors.orange),
                  ),
                  title: const Text('Email'),
                  trailing: const Icon(Icons.lock_outline), // Replace with actual data later
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green[50],
                    child: const Icon(Icons.link, color: Colors.green),
                  ),
                  title: const Text('Url'),
                  trailing: const Icon(Icons.lock_outline), // Replace with actual data later
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple[50],
                    child: const Icon(Icons.download_for_offline_outlined, color: Colors.purple),
                  ),
                  title: const Text('Save Contact'),
                  trailing: const Icon(Icons.lock_outline), // Replace with actual data later
                ),
      
                const SizedBox(height: 20),
      
                // Subscribe button
                Center(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Subscribe action here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    icon: const Icon(Icons.lock, color: Colors.white),
                    label: const Text(
                      'Subscribe to unlock',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
      
        ],
      ),
    );
  }
}
