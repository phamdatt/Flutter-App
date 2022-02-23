import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/contants.dart';
import 'package:my_app/json/songs.json.dart';
import 'package:my_app/theme/colors.dart';

class HomePageSpotify extends StatefulWidget {
  @override
  _HomePageSpotify createState() => _HomePageSpotify();
}

class _HomePageSpotify extends State<HomePageSpotify> {
  int activeMenu = 0;
  int activeMenu2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black, appBar: getAppBar(), body: getBody());
  }

  AppBar getAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Explore",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.list, color: Colors.white))
        ],
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () => {
                            setState(() => {activeMenu = index})
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(song_type_1[index],
                                  style: TextStyle(
                                      color:
                                          activeMenu == index ? primary : grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(height: 3),
                              activeMenu == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: List.generate(
                        songs.length - 5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  songs[index]['img']),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      songs[index]['title'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 180,
                                      child: Text(
                                        songs[index]['description'],
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: List.generate(song_type_2.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () => {
                            setState(() => {activeMenu2 = index})
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(song_type_2[index],
                                  style: TextStyle(
                                      color:
                                          activeMenu2 == index ? primary : grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(height: 10),
                              activeMenu2 == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: List.generate(
                        songs.length - 5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  songs[index + 5]['img']),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      songs[index]['title'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 180,
                                      child: Text(
                                        songs[index]['description'],
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: List.generate(song_type_1.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () => {
                            setState(() => {activeMenu = index})
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(song_type_1[index],
                                  style: TextStyle(
                                      color:
                                          activeMenu == index ? primary : grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(height: 3),
                              activeMenu == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: List.generate(
                        songs.length - 5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  songs[index]['img']),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      songs[index]['title'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 180,
                                      child: Text(
                                        songs[index]['description'],
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: List.generate(song_type_2.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () => {
                            setState(() => {activeMenu2 = index})
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(song_type_2[index],
                                  style: TextStyle(
                                      color:
                                          activeMenu2 == index ? primary : grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(height: 10),
                              activeMenu2 == index
                                  ? Container(
                                      width: 10,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    )
                                  : Container()
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: List.generate(
                        songs.length - 5,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  songs[index + 5]['img']),
                                              fit: BoxFit.cover),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      songs[index]['title'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      width: 180,
                                      child: Text(
                                        songs[index]['description'],
                                        maxLines: 1,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
