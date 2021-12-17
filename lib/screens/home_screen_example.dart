

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/app_ui.dart';
import 'package:my_app/theme/colors.dart';

class HomeScreenExample01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
    );
  }
}

AppBar Header(){
  return AppBar(
    backgroundColor: Colors.white,

    leading: IconButton(
      icon: SvgPicture.asset(AppUi.iconMenu,color: kTextColor),
      onPressed: (){}
    ),
    title: Text("Category",style: TextStyle(fontSize: 14,color: kTextColor)),
    actions: [
      IconButton(
       icon: SvgPicture.asset(AppUi.iconCart,color: kTextColor),
       onPressed: (){},
      )
    ],
  );
}