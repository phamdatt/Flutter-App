// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:doric/contants.dart';
import 'package:doric/theme/colors.dart';
import 'package:doric/widgets/search_bar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: size.height * .45,
          decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage(AppUi.iconMeditationBg),
                fit: BoxFit.fitWidth,
              )),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.05,
                ),
                // ignore: prefer_const_constructors
                Text("Meditation", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text("3-10 MIN Course",
                    style: Theme.of(context).textTheme.overline),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width * .6,
                  child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation"),
                ),
                SizedBox(width: size.width * .5, child: SearchBar()),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: <Widget>[
                    SessionCard(
                      onPress: () {
                      
                      },
                      seassion: 4,
                      isDone: false,
                    ),
                    SessionCard(
                      onPress: () {},
                      seassion: 4,
                      isDone: false,
                    ),
                    SessionCard(
                      onPress: () {},
                      seassion: 4,
                      isDone: false,
                    ),
                    SessionCard(
                      onPress: () {},
                      seassion: 4,
                      isDone: false,
                    ),
                    SessionCard(
                      onPress: () {},
                      seassion: 4,
                      isDone: false,
                    ),
                    SessionCard(
                      onPress: () {},
                      seassion: 4,
                      isDone: false,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text("Meditation"),
                SizedBox(height: 10),
                Container(
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          spreadRadius: -23,
                          blurRadius: 23,
                          color: Colors.black,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(13)),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppUi.iconMeditationWoment),
                      SizedBox(width: 20),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Basic 2",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Start your deepen you pratice",
                            style: TextStyle(),
                          ),
                        ],
                      )),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(AppUi.iconLock),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ))
      ]),
    );
  }
}

class SessionCard extends StatelessWidget {
  final int seassion;
  final bool isDone;
  final Function onPress;
  const SessionCard(
      {Key? key,
      required this.seassion,
      this.isDone = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constrains.maxWidth / 2 - 10,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(3, 17),
                  spreadRadius: -23,
                  blurRadius: 23,
                  color: Colors.black,
                )
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPress(),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 42,
                      decoration: BoxDecoration(
                          color: isDone ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor)),
                      child: Icon(Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColor),
                    ),
                    SizedBox(width: 10),
                    Text("Session 01",
                        style: Theme.of(context).textTheme.overline)
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
