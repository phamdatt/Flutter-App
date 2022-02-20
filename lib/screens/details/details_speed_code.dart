import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/models/ProductExample01.dart';
import 'package:my_app/screens/details/body_details.dart';
import 'package:my_app/theme/colors.dart';

class DetailsSpeedCode extends StatelessWidget {
  final ProductExample01 product;
  const DetailsSpeedCode({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondarySpeedCodeColor,
      appBar: buildAppBar(context),
      body: Body(product:product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: SvgPicture.asset(AppUi.iconBack),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon:
              SvgPicture.asset(AppUi.iconAddToCart, color: kTextSpeedCodeColor),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
