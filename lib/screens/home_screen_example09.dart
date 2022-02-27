import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doric/models/Users.dart';
import 'package:doric/services/getUserResponse.dart';

class HomeScreenExample09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FutureBuilder(
        future: getUserCallApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            if (data is Users) {
              return Text("${data.id} : ${data.login} : ${data.node_id}");
            } else {
              return Text("Bind Error");
            }
          } else if (snapshot.hasData) {
            return Text("Fail");
          } else {
            return CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
