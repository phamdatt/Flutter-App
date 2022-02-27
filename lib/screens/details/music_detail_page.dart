import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:doric/theme/colors.dart';

class MusicDetailPage extends StatefulWidget {
  final String title;
  final String description;
  final Color color;
  final String img;
  final String songUrl;
  const MusicDetailPage(
      {Key? key,
      required this.title,
      required this.description,
      required this.color,
      required this.img,
      required this.songUrl})
      : super(key: key);
  @override
  _MusicDetailPageState createState() => _MusicDetailPageState();
}

class _MusicDetailPageState extends State<MusicDetailPage> {
  double _currentSlider = 20;
  late AudioPlayer advancePlayer;
  late AudioCache audioCache;
  bool isPlayer = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  initPlayer() {
    advancePlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancePlayer);
    playSound(widget().songUrl);
  }

  playSound(localPath) async {
    await advancePlayer.play(localPath);
  }

  stopSound(localPath) async {
    File audioFile = (await audioCache.load(localPath)) as File;
    await advancePlayer.setUrl(audioFile.path);
    advancePlayer.stop();
  }

  seekSound() async {
    File audioFile = (await audioCache.load(widget().songUrl)) as File;
    await advancePlayer.setUrl(audioFile.path);
    advancePlayer.seek(Duration(milliseconds: 2000));
  }

  @override
  void dispose() {
    super.dispose();
    stopSound(widget().songUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  AppBar getAppBar() {
    return AppBar(backgroundColor: Colors.black, elevation: 0, actions: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.white))
    ]);
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Container(
                  width: size.width - 60,
                  height: size.width - 60,
                  decoration: BoxDecoration(
                      color: primary,
                      image: DecorationImage(
                          image: AssetImage(widget().img), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: size.width - 80,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.add_a_photo, color: Colors.white),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(widget().title,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                      Container(
                          width: 150,
                          child: Text(widget().description,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white.withOpacity(0.5)))),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Slider(
            activeColor: primary,
            value: _currentSlider,
            onChanged: (value) {
              setState(() {
                _currentSlider = value;
              });
              seekSound();
            },
            min: 0,
            max: 200,
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("1:50",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    )),
                Text("4.68",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ))
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.replay, color: Colors.white)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.back_hand, color: Colors.white)),
                IconButton(
                    onPressed: () {
                      if (isPlayer) {
                        stopSound(widget().songUrl);
                        setState(() {
                          isPlayer = false;
                        });
                      } else {
                        print(widget().songUrl);
                        playSound(widget().songUrl);
                        setState(() {
                          isPlayer = true;
                        });
                      }
                    },
                    icon: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: primary),
                        child: Center(
                            child: Icon(
                                isPlayer ? Icons.stop : Icons.play_arrow,
                                color: Colors.white)))),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.rice_bowl, color: Colors.white)),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.change_circle, color: Colors.white))
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.tv, color: primary, size: 20),
              SizedBox(width: 10),
              Text("Chromecast is ready", style: TextStyle(color: primary))
            ],
          )
        ],
      ),
    );
  }
}
