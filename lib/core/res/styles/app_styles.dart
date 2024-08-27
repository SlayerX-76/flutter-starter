import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketColor1 = const Color(0xff054e96);
  static Color ticketColor2 = const Color(0xfff35d79);
  static Color planeColor = const Color(0xFFFBFC2DF);
  static Color findTicketsColor = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF189999);
  static Color ticketColor3 = const Color(0xFFFFFFFF);
  static Color neoBDColor = const Color(0xFF8ACCF7);

  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headlineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headlineStyle4 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle frantic = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle ticketsNeoColor = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
}
