import 'package:flutter/material.dart';

class Containers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'this is container',
        home: Scaffold(
          body: Container(
            height: 56.0,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigation Menu',
                  onPressed: () {
                    print('Hello Pham Tien Dat');
                  },
                )
              ],
            ),
          ),
        ));
  }
}
