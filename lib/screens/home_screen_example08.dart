import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doric/models/Category.dart';
import 'package:doric/services/getCategories.dart';

class HomeScreenExample08 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: fetchCategory(),
          builder: (context,snapshot){
           if(!snapshot.hasData){
             return Text("null");
           }else{
             return ListView.builder(itemBuilder: (context,index){
                return ListTile(
                    title:Text("hello")

                );
             });
           }
          },
        ),
      ),
    );
  }
}
