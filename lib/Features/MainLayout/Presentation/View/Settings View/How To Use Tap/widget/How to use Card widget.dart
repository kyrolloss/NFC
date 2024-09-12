import 'package:flutter/material.dart';

class DeviceOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color? iconBackground;

  DeviceOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconBackground,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(

              radius: width * .1,
              backgroundColor: Colors.grey[300],
              child: Icon(
                icon,
                color: Colors.black,
                size: width * .1,
              ),
            ),

            SizedBox(
              width: width * .035,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontSize: width * .05, color: Colors.black),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                      fontSize: width * .03, color: Colors.black54),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[400],
            ),
          ],
        ));
  }
}
