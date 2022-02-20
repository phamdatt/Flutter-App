import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/models/Users.dart';
import 'package:my_app/services/getUserResponse.dart';

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
