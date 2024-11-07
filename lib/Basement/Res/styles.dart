import 'package:flutter/material.dart';

Color primary = const Color(0xFFeeedf2);

class Appstyle {
  //colors
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketColor1 = const Color(0xFF2980b9);
  static Color ticketColor2 = const Color(0xFFf88063);
  static Color hotelText = Colors.white;

  //textstyle
  static TextStyle headLine01 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headLine02 = const TextStyle(
    fontSize: 27,
    fontWeight: FontWeight.bold,
    color: Colors.blueGrey,
  );

  static TextStyle headLine03 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.blueGrey,
  );

  static TextStyle headLine04 = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
