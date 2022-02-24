import 'package:flutter/material.dart';
import 'package:my_app/screens/home_page_spotify.dart';

class HomeScreenSpotify extends StatefulWidget {
  @override
  _HomeScreenSpotify createState() => _HomeScreenSpotify();
}

class _HomeScreenSpotify extends State<HomeScreenSpotify> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeIndex,
      children: <Widget>[
        HomePageSpotify(),
        Center(
            child: Text("Menu",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
        Center(
            child: Text("Notifications",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
        Center(
            child: Text("User",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)))
      ],
    );
  }

  List<IconData> icons = [
    Icons.home,
    Icons.photo_album,
    Icons.notifications,
    Icons.verified_user_sharp
  ];
  Widget getFooter() {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                icons.length,
                (index) => IconButton(
                    onPressed: () {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    icon: Icon(icons[index],
                        color: activeIndex == index
                            ? Colors.green
                            : Colors.white)))),
      ),
    );
  }
}
