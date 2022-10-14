import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

class Dimensions {
  static double deviceScreenHeight = Get.height;
  static double deviceScreenWidth = Get.width;

  static double getDimension(double dimension) {
    double appBarHeight;
    if (defaultTargetPlatform == TargetPlatform.iOS)
      appBarHeight = 50;
    else if (defaultTargetPlatform == TargetPlatform.android)
      appBarHeight = 25;
    else if (defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      appBarHeight = 75;
      dimension = dimension / 1.1;
    } else
      appBarHeight = 0;

    return ((deviceScreenHeight - appBarHeight) /
        (deviceScreenHeight / dimension));
  }
}
