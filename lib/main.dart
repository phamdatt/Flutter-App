import 'package:flutter/material.dart';
import 'my_app.dart';
import '_test.dart';
import '_containers.dart';
import '_material.dart';
import 'learn_state_fullWIdget.dart';
import 'ui_test.dart';
import 'landing_page.dart';

void main() {
  // runApp(MyApp());
  // runApp(Test());
  // runApp(Containers());
  // runApp(MaterialApp(
  //   title:'Flutter tourial',
  //   home:TourialMaterial(),
  // ));
  // runApp(MaterialApp(
  //     title: 'HomePage',
  //     home: Scaffold(
  //       body: Column(
  //         children: [Text("hell")],
  //       ),
  //     )));
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LandingPage',
      home: LandingPage()));
}
