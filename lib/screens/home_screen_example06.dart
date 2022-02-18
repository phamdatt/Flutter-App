import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeScreenExample06 extends StatelessWidget {
  List<String> names = ['Pham Tien Dat', 'Pham Thai Hoa', 'Pham Quoc Tan'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.purple,
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
              ),
            ),
            Expanded(flex: 3, child: Container(color: Colors.purple))
          ],
        ));
  }
}
