import 'package:flutter/material.dart';
import 'package:my_app/app_ui.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          onTap: () {},
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
              padding: const EdgeInsets.all(16),
              alignment: Alignment.centerLeft,
              child: const Text(
                "It is amaziong how complete is the delusion that beauty is goodness",
                style: TextStyle(fontSize: 14),
              ),
            ),
            Container(
              height: size.height * 2 / 3,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
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
                              text: const TextSpan(
                                  text: 'B',
                                  style: TextStyle(
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
                                        text: 'eautiful',
                                        style:
                                            TextStyle(fontSize: 56, shadows: [
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
                    );
                  }),
            ),
            Container(
              height: 12,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return buildIndicator(index == _currentIndex, size);
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.refresh),
        backgroundColor: Colors.black,
      ),
    );
  }

  Widget buildIndicator(bool isAtive, Size size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: isAtive ? size.width * 1 / 5 : 24,
      decoration: BoxDecoration(
          color: isAtive ? Colors.blue[50] : Colors.blueGrey,
          borderRadius: BorderRadius.all(const Radius.circular(8)),
          boxShadow: [
            BoxShadow(
                color: Colors.black38, offset: Offset(2, 3), blurRadius: 3)
          ]),
    );
  }
}
