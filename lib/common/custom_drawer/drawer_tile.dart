import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({required this.iconData, required this.title, super.key});  

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Icon(
          iconData,
          size: 32,
          color: Colors.grey[700],
        ),
        Text(
          title,
          style:  TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
