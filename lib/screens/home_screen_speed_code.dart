import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doric/contants.dart';
import 'package:doric/screens/body.dart';
import 'package:doric/services/size_config.dart';
import 'package:doric/theme/colors.dart';

class HomeScreenSpeedCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.scanner_sharp, color: Colors.black)),
        Center(
            child: Text("Scan", style: TextStyle(color: kTextSpeedCodeColor))),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}
