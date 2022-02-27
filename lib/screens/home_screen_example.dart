// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doric/contants.dart';
import 'package:doric/size_config.dart';
import 'package:doric/theme/colors.dart';

class HomeScreenExample01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
    );
  }
}

AppBar Header() {
  return AppBar(
    backgroundColor: Colors.white,

    leading: IconButton(
        icon: SvgPicture.asset(
          AppUi.iconMenu,
          color: kTextColor,
     
        ),
        onPressed: () {}),
    // ignore: prefer_const_constructors
    title: Text("Category", style: TextStyle(fontSize: 14, color: kTextColor)),
    actions: [
      IconButton(
        icon: SvgPicture.asset(AppUi.iconCart, color: kTextColor),
        onPressed: () {},
      )
    ],
  );
}
