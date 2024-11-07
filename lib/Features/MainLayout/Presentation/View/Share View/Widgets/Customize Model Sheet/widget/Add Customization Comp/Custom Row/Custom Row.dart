import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final Icon logo;
  final bool num2;

  const CustomRow(
      {super.key, required this.title, required this.logo, required this.num2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            logo,
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
        num2
            ? const Row(
                children: [
                  Icon(
                    Icons.add_box_rounded,
                    color: Colors.grey,
                  ),
                  Text(
                    ' Upload Logo',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            : const SizedBox()
      ],
    );
  }
}
