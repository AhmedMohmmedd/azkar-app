import 'package:azkar/utils/constantis.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleBold15(context) {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, fontSize: 15),
        fontFamily: 'Marhey');
  }

  static TextStyle styleBold18(context) {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: 'shekari');
  }
  static TextStyle styleBold24(context) {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: 'shekari');
  }
  static TextStyle styleBold30(context) {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontFamily: 'shekari');
  }
  static TextStyle styleArefRuqaaBold30(context) {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontFamily: 'ArefRuqaa');
  }
  static TextStyle styleReguler20(context) {
    return TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: 'NotoNastaliqUrdu');
  }
  static TextStyle styleReguler16(context) {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: 'NotoNastaliqUrdu');
  }
  static TextStyle styleReguler30(context) {
    return TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontSize(context, fontSize: 30),
        fontFamily: 'NotoNastaliqUrdu');
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 400;
  } else if (width < 1100) {
    return width / 900;
  } else {
    return width / 1300;
  }
}
