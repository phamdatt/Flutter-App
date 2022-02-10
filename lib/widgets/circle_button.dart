import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CirCleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPress;
  const CirCleButton(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed:onPress,
        icon: Icon(icon),
        color: Colors.black,
        iconSize: iconSize,
      ),
    );
  }
}
