import 'package:flutter/material.dart';

class SizeConfig {
   static MediaQueryData? _mediaQueryData;
   static double? screenWidth;
   static double? screenHeight;
   static Orientation? orientation = Orientation.landscape;
   static double? defaultSize;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
    orientation = _mediaQueryData!.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;
  }
}
