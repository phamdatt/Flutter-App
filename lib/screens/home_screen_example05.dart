import 'package:flutter/material.dart';

class HomeScreenExample05 extends StatefulWidget {
  const HomeScreenExample05({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenExample05State();
  }
}

class _HomeScreenExample05State extends State<HomeScreenExample05> {
  @override
  Widget build(BuildContext context) {
    int values = 0;
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu), title: Text("Radio Learn")),
      body: Column(
        children: <Widget>[
          ListTile(
              title: Text('Female'),
              leading: Radio(
                  value: 0,
                  groupValue: values,
                  onChanged: (value) {
                    setState(() {
                      value = 0;
                    });
                  })),
          ListTile(
              title: Text('Male'),
              leading: Radio(
                  value: 1,
                  groupValue: values,
                  onChanged: (value) {
                    setState(() {
                      value = 1;
                    });
                  }))
        ],
      ),
    );
  }
}
