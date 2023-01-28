import 'package:flutter/material.dart';

class ColorUtils {
  static const Color primary = Color(0xff4E84FF);
  static const Color font = Color(0xff444655);
  static const Color appOrange = Color(0xffD46F00);
  static const Color appGreen = Color(0xff00AAC4);
  static const Color appLightOrange = Color(0xffFF9884);
  static const Color appPink = Color(0xffFF77B7);
  static const Color appYellow = Color(0xffFFC963);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static const Color blue = Colors.blue;
  static const Color green = Colors.green;
  static const Color yellow = Colors.yellow;
  static const Color pink = Colors.pink;
  static const Color grey = Colors.grey;
  static const Color appPurple = Color(0xff9363D0);
  static const Color scaffold = Color(0xffFAFAFA);
  static const Color profilePrograBar = Color(0xff00B8FF);
  static const Color boxShadow = Color(0xffC0C0C0);
  static const Color borderBlue = Color(0xffDDECFF);

  static ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: ColorUtils.white,
    backgroundColor: ColorUtils.primary,
    elevation: 0,
    // minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );

  static ButtonStyle dullraisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: ColorUtils.primary,
    backgroundColor: Color(0xFFE1E9FF).withOpacity(0.3),
    elevation: 0,
    // minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );
}
