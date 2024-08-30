import 'package:dash_board/utils/res_textsize.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle textStyleRegular16(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleBold16(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w700,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle textStyleMedium16(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleMedium20(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
      color: Colors.white,
    );
  }

  static TextStyle textStyleSemiBold16(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleSemiBold20(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleRegular12(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 12),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle textStyleSemiBold24(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 24),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle textStyleRegular14(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 14),
      fontWeight: FontWeight.w400,
      fontFamily: 'Montserrat',
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle textStyleSemiBold18(context) {
    return TextStyle(
      fontSize: getResFontSize(context, fontsize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: 'Montserrat',
      color: const Color(0xff4EB7F2),
    );
  }
}
