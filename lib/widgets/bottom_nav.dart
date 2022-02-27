import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doric/contants.dart';

class BottomNavigator extends StatelessWidget {
  final String title;
  final String svg;
  final Function onPress;

  const BottomNavigator(
      {Key? key, required this.title, required this.svg,required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svg),
          Text(title),
        ],
      ),
    );
  }
}
