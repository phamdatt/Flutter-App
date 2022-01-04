import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/theme/colors.dart';

class Header extends StatelessWidget {
  final String headerTitle;
  
  const Header(
      {Key? key,
      required this.headerTitle,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset(AppUi.iconBack),
        onPressed: () {},
      ),
      title: Text(
        headerTitle,
        style: TextStyle(fontSize: 14, color: kTextColor),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppUi.iconSearch),
          color: kTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            AppUi.iconCart,
            color: kTextColor,
          ),
        )
      ],
    );
  }
}
