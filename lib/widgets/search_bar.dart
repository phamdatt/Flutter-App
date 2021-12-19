import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search",
            icon: SvgPicture.asset(AppUi.iconSearch),
            border: InputBorder.none),
      ),
    );
  }
}
