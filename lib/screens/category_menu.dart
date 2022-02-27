import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doric/contants.dart';
import 'package:doric/widgets/main_header.dart';

class CategoryMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainHeader(
              isLeftIcon: false,
              headerTitle: "Menu",
              leftIcon: "",
              isNotifications: false,
              isCart: true)
        ],
      ),
    );
  }
}
