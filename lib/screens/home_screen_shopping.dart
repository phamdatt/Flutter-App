// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doric/contants.dart';
import 'package:doric/theme/colors.dart';
import 'package:doric/widgets/body.dart';

class HomeShoppingPage extends StatelessWidget {
  const HomeShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Body(title: 'Women'),
    );
  }

  AppBar Header() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(AppUi.iconBack),
        onPressed: () {},
      ),
      title: Text(
        'Home',
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
