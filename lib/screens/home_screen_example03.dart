import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doric/contants.dart';
import 'package:doric/widgets/header.dart';

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
