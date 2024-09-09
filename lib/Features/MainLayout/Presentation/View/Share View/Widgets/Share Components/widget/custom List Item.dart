import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget trailing;

  const CustomListItem({super.key,
    required this.icon,
    required this.text,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(text, style: const TextStyle(fontSize: 16)),
      trailing: SizedBox(
          child: trailing),
    );
  }
}