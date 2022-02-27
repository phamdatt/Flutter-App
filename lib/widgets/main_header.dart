import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/cart/cart.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/theme/colors.dart';
import 'package:page_transition/page_transition.dart';

class MainHeader extends StatelessWidget {
  final String headerTitle;
  final bool isLeftIcon;
  final dynamic leftIcon;
  final bool isNotifications;
  final bool isCart;
  const MainHeader(
      {Key? key,
      required this.headerTitle,
      this.isLeftIcon = false,
      this.isNotifications = false,
      this.isCart = false,
      required this.leftIcon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {},
            icon: isLeftIcon
                ? SvgPicture.asset(
                    AppUi.fadoLogo,
                    fit: BoxFit.contain,
                  )
                : IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(leftIcon))),
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
          isNotifications
              ? (IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppUi.iconNotifications,
                    color: Colors.black,
                    height: 20,
                    width: 20,
                  )))
              : SizedBox(),
          isCart
              ? (IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            child: Cart(),
                            type: PageTransitionType.scale));
                  },
                  icon: SvgPicture.asset(AppUi.iconCart,
                      color: Colors.black, height: 20, width: 20)))
              : SizedBox(),
        ],
      ),
    );
  }
}
