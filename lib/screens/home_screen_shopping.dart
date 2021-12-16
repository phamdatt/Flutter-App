import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/app_ui.dart';
import 'package:my_app/theme/colors.dart';
import 'package:my_app/widgets/body.dart';

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
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppUi.iconSearch),
          color: kTextColor,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_bag),
          color: kTextColor,
        )
      ],
    );
  }
}
