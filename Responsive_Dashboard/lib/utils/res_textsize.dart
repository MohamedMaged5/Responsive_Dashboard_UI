import 'package:flutter/material.dart';

double getResFontSize(context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(context);
  double resFontSize = fontsize * scaleFactor;
  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;
  return resFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var dpr = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / dpr;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 700) {
    return width / 500;
  } else if (width < 1100) {
    return width / 850;
  } else {
    return width / 1920;
  }
}
