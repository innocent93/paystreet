// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  // final Color color;
  final Color iconColor;
  const IconAndTextWidget(
      {super.key,
        required this.icon,
        required this.text,
        // required this.color,
        required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Icon(icon, color: iconColor, size: 20),
          SizedBox(
            width: 5,
          ),
          Text(text)
        ],
      ),

    );
  }
}
