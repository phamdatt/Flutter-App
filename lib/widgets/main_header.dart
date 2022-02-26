import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/theme/colors.dart';

class MainHeader extends StatelessWidget {
  final String headerTitle;
  final dynamic leftIcon;
  final dynamic rightIcon;
  const MainHeader({
    Key? key,
    required this.headerTitle,
    required this.leftIcon,
    required this.rightIcon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            leftIcon,
            height: 100,
            width: 100,
            fit: BoxFit.contain,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              headerTitle,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(rightIcon, color: Colors.black))
        ],
      ),
    );
  }
}
