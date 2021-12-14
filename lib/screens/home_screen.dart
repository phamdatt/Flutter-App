import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/app_ui.dart';
import 'package:my_app/theme/colors.dart';
import 'package:my_app/widgets/bottom_nav.dart';
import 'package:my_app/widgets/category_card.dart';

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
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        icon: SvgPicture.asset(AppUi.iconSearch),
                        border: InputBorder.none),
                  ),
                ),
                Expanded(
                    child: GridView.count(
                  childAspectRatio: .85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                    CategoryCard(
                      press: () {},
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                    CategoryCard(
                      press: () {},
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                    CategoryCard(
                      press: () {},
                      svgSrc: AppUi.iconHamburger,
                      title: "Diet Recomentdation",
                    ),
                    CategoryCard(
                      press: () {},
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
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavigator(title: 'Home', svg: AppUi.iconCalendar, onPress: (){})
          ],),
      ),
    );
  }
}
