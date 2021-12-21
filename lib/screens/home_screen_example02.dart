// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/theme/colors.dart';

import 'detail_screen_example02.dart';

class HomeScreenExample02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: BodyExample02(),
      bottomNavigationBar: MyBottomNavigator(),
    );
  }
}

class MyBottomNavigator extends StatelessWidget {
  const MyBottomNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      height: 60,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: kPrimaryColor.withOpacity(0.38),
            offset: Offset(0, 10),
            blurRadius: 35)
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppUi.iconFlower)),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppUi.iconHearts)),
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppUi.iconSun)),
        ],
      ),
    );
  }
}

AppBar Header() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(AppUi.iconMenu, color: kTextColor),
      onPressed: () {},
    ),
  );
}

class BodyExample02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommend",
            onPress: () {},
          ),
          ItemPlanCard(),
          TitleWithMoreBtn(
            title: "Featured Plans",
            onPress: () {},
          ),
          FeaturedPlants()
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            FeaturePlanCard(
              image: AppUi.imageBottom,
              onPress: () {},
            ),
            FeaturePlanCard(
              image: AppUi.imageBottom,
              onPress: () {},
            ),
            FeaturePlanCard(
              image: AppUi.imageBottom,
              onPress: () {},
            )
          ],
        ));
  }
}

class FeaturePlanCard extends StatelessWidget {
  final String image;
  final VoidCallback onPress;
  const FeaturePlanCard({
    Key? key,
    required this.image,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          width: size.width * 0.8,
          height: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(image)))),
    );
  }
}

class ItemPlanCard extends StatelessWidget {
  const ItemPlanCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendPlantCard(
            title: "Samantha\n",
            price: 440,
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailExample02Screen();
              }));
            },
            image: AppUi.imagesCay1,
            country: "Russisa",
          ),
          RecommendPlantCard(
            title: "Samantha\n",
            price: 440,
            onPress: () {},
            image: AppUi.imagesCay2,
            country: "Russisa",
          ),
          RecommendPlantCard(
            title: "Samantha\n",
            price: 440,
            onPress: () {},
            image: AppUi.imagesCay3,
            country: "Russisa",
          )
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final VoidCallback onPress;

  const RecommendPlantCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(left: 20, top: 10, bottom: 20 * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(image),
            GestureDetector(
              onTap: onPress,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(13),
                        bottomRight: Radius.circular(13))),
                child: Row(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: title.toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                      ),
                    ])),
                    Spacer(),
                    Text("$price",
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: kPrimaryColor))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          TitleWithCustom(title: title),
          Spacer(),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: kPrimaryColor,
            onPressed: onPress,
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustom extends StatelessWidget {
  final String title;
  const TitleWithCustom({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.only(right: 5),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 56),
            height: size.height * 0.2 - 27,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Hi Uishopy",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Image.asset(AppUi.logo)
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              height: 54,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle:
                            TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset(AppUi.iconSearch, color: kPrimaryColor)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
