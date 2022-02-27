import 'package:flutter/material.dart';
import 'package:doric/models/ProductExample01.dart';
import 'package:doric/services/getProducts.dart';

class HomeScreenExample10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder<List<ProductExample01>>(
        future:getProductsByDio(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data;
            if (data is List<ProductExample01>) {
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          child: Image.network(data[index].image),
                        )
                      ],
                    );
                  });
            } else {
              return Text("Dont not is List Product Example01");
            }
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    ));
  }
}
