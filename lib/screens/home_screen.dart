// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/theme/colors.dart';
import 'package:my_app/widgets/bottom_nav.dart';
import 'package:my_app/widgets/category_card.dart';
import 'package:my_app/widgets/search_bar.dart';
import 'package:my_app/screens/detail.screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //điều này sẽ cung cấp cho chúng tôi tổng chiều cao và chiều rộng thiết bị của chúng tôi
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Chiều cao bằng 45% tổng chiều cao màn hình
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kHomeScreenColor,
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage(AppUi.unDraw)),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(AppUi.iconMenu),
                  ),
                ),
                Text(
                  "Good morning \nPTD",
                  style: Theme.of(context)
                      .textTheme
                      .overline!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                SearchBar(),
                Expanded(
                    child: GridView.count(
                  childAspectRatio: .85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                    CategoryCard(
                      press: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (event) => DetailScreen()));
                      },
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                    CategoryCard(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (event) => DetailScreen()));
                      },
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                    CategoryCard(
                      press: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (event) => DetailScreen()));
                      },
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                    CategoryCard(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (event) => DetailScreen()));
                      },
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                  ],
                ))
              ],
            ),
          )),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavigator(
                title: 'Today', svg: AppUi.iconCalendar, onPress: () {}),
            BottomNavigator(
                title: 'All Excerciese', svg: AppUi.iconGym, onPress: () {}),
            BottomNavigator(
                title: 'Settings', svg: AppUi.iconSetting, onPress: () {}),
          ],
        ),
      ),
    );
  }
}

