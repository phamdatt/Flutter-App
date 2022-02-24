import 'package:flutter/material.dart';
import 'package:my_app/json/songs.json.dart';
import 'package:my_app/theme/colors.dart';

class AlBumPage extends StatefulWidget {
  final dynamic song;
  const AlBumPage({
    Key? key,
    required this.song,
  }) : super(key: key);

  @override
  _AlBumPageState createState() => _AlBumPageState();
}

class _AlBumPageState extends State<AlBumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    List songsAlbum = widget().song['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size.width,
                height: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget().song['img']),
                        fit: BoxFit.cover)),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(widget().song['title'],
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 10, right: 12, left: 12, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Subcribe",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    )
                  ],
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
                                      width: size.width - 250,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            songs[index]['song_count'],
                                            maxLines: 1,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            songs[index]['date'],
                                            maxLines: 1,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Column(
                  children: List.generate(
                      songsAlbum.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, bottom: 10),
                            child: GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: (size.width - 60) * 0.77,
                                    height: 50,
                                    child: Text(
                                        "${index + 1} " +
                                            songsAlbum[index]['title'],
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                  Container(
                                    width: (size.width - 60) * 0.23,
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(songsAlbum[index]['duration'],
                                            style:
                                                TextStyle(color: Colors.grey)),
                                        Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.withOpacity(0.8),
                                          ),
                                          child: const Center(
                                            child: Icon(Icons.play_arrow,
                                                color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )))
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert, color: Colors.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}
