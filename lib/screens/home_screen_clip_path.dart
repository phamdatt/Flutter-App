import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenClipPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipPath(
          clipper: ClipPaths(),
          child: Container(
            color: Colors.red,
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}

class ClipPaths extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width/2, size.height);
   
    return path;
  }


  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) {
     return true;
  }
}
