import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  String name;
  int age;
  MyApp({required this.name, required this.age});
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _email = ''; //this is state
  final emailEditingController = TextEditingController();
  DateTime now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'This is statefullWidget',
        home: Scaffold(
            body: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(
                controller: emailEditingController,
                onChanged: (text) {
                  this.setState(() {
                    _email = text;
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(20)),
                    ),
                    labelText: "Email"),
              ),
            ),
            Text(
              "asdasd",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
            ),
            Text(
              _email,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),
              textDirection: TextDirection.ltr,
            )
          ],
        ))));
  }
}
