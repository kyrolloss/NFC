import 'package:flutter/material.dart';

class CustomListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget trailing;
  final bool?color;
  final VoidCallback? onTap;

  const CustomListItem({super.key,
    this.onTap,
    required this.icon,
    required this.text,
    required this.trailing, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(icon, color:color == null ? Colors.black : Colors.orange),
      title: Text(text, style:  TextStyle(fontSize: 16 , color: color == null ? Colors.black : Colors.orange )),
      trailing: SizedBox(
          child: trailing),
    );
  }
}