import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app_ui.dart';
import 'package:my_app/models/app_button.dart';
import 'package:my_app/models/english_today.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;
  List<EnglishToday> words = [];
  List<int> fixedlistRandom({int len = 1, int max = 120, int min = 1}) {
    if (len > max || len < min) {
      return [];
    }
    List<int> newList = [];
    Random random = Random();
    int count = 1;
    while (count <= len) {
      int val = random.nextInt(max);
      if (newList.contains(val)) {
        continue;
      } else {
        newList.add(val);
        count++;
      }
    }
    return newList;
  }

  getEnglishToday() {
    List<String> newList = [];
    List<int> rans = fixedlistRandom(len: 5, max: nouns.length);
    rans.forEach((element) {
      newList.add(nouns[element]);
    });
    words = newList.map((e) => EnglishToday(noun: e)).toList();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.9);
    getEnglishToday();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Center(
          child: Text(
            "English Today",
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.blue[50],
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: [],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 1 / 10,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              alignment: Alignment.centerLeft,
              child: const Text(
                "It is amaziong how complete is the delusion that beauty is goodness",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              height: size.height * 2 / 3,
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: words.length,
                  itemBuilder: (context, index) {
                    String firstLetter =
                        words[index].noun != null ? words[index].noun! : '';
                    firstLetter = firstLetter.substring(0, 1);

                    String leftLetter =
                        words[index].noun != null ? words[index].noun! : '';
                    leftLetter = leftLetter.substring(1, leftLetter.length);
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(24))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerRight,
                              child: Image.asset(AppUi.imagesSpalash),
                            ),
                            RichText(
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                    text: firstLetter,
                                    style: const TextStyle(
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          BoxShadow(
                                              color: Colors.black38,
                                              offset: Offset(3, 6),
                                              blurRadius: 6)
                                        ]),
                                    children: [
                                      TextSpan(
                                          text: leftLetter,
                                          style:
                                              const TextStyle(fontSize: 56, shadows: [
                                            BoxShadow(
                                              color: Colors.white,
                                              offset: Offset(0, 0),
                                            )
                                          ]))
                                    ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 24),
                              child: Text(
                                  "Think off all the beauty still left around you and be happy",
                                  style: const TextStyle(
                                          fontSize: 14, color: Colors.white)
                                      .copyWith(
                                          letterSpacing:
                                              1)), //coppyWith : add spacing text
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: 12,
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return buildIndicator(index == _currentIndex, size);
                    }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            getEnglishToday();
          });
        },
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 24, left: 16),
                  child: Text("Your mind",
                      style: TextStyle(fontSize: 32, color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: AppButton(
                    title: "Favorite",
                    onTap: () {
                      print("Tuyet");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: AppButton(
                    title: "Your control",
                    onTap: () {
                      print("Tuyet");
                    },
                  ),
                )
              ],
            ),
            color: Colors.blue[100]),
      ),
    );
  }

  Widget buildIndicator(bool isAtive, Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: isAtive ? size.width * 1 / 5 : 24,
      decoration: BoxDecoration(
          color: isAtive ? Colors.blue[50] : Colors.blueGrey,
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
          ]),
    );
  }
}
