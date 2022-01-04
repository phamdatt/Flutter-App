import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/widgets/header.dart';

class HomeScreenExample03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Header(
          headerTitle: 'Home',
        )
      ],
    ));
  }
}
