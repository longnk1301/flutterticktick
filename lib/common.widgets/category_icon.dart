import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  CategoryIcon({this.bgColor, required this.iconData});

  final dynamic bgColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        iconData,
        size: 20,
        color: Colors.white,
      ),
    );
  }
}
