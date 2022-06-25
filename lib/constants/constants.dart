import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sabitler {
  Sabitler._();
  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white, 
        fontWeight: FontWeight.bold, 
        fontSize: _calculateFontSize(40));
  }

  static TextStyle getPokemonTextStyle() {
    return TextStyle(
        color: Colors.white, 
        fontWeight: FontWeight.bold, 
        fontSize: _calculateFontSize(24));
  }

  static TextStyle getChipTextStyle() {
    return TextStyle(
        color: Colors.white, 
        fontWeight: FontWeight.bold, 
        fontSize: _calculateFontSize(16));
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }
}
