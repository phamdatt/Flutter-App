import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final EmailController = TextEditingController();
  String _email = '';
  int count = 0;
  _incree() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'This is test',
        home: Scaffold(
            body: SafeArea(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
                child: TextField(
              controller: EmailController,
              onChanged: (text) {
                setState(() {
                  _email = text;
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  labelText: "Enter your email"),
            )),
            Text(
              _email,
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
              textDirection: TextDirection.ltr,
            ),
            Text(
              '$count',
              style: const TextStyle(fontSize: 20),
              textDirection: TextDirection.ltr,
            ),
            TextButton(
              child: const Text('Incree'),
              onPressed: () {
                _incree();
              },
            )
          ],
        ))));
  }
}
