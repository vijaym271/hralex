import 'package:college_bag/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
      scaffoldBackgroundColor: ColorUtils.scaffold,
      appBarTheme: const AppBarTheme(
          backgroundColor: ColorUtils.white,
          elevation: 0.0,
          foregroundColor: ColorUtils.font),
      fontFamily: 'Aganè',
      textTheme: GoogleFonts.openSansTextTheme(
        Theme.of(context).textTheme,
      ),
      navigationBarTheme: NavigationBarThemeData(
          indicatorColor: ColorUtils.blue,
          labelTextStyle: MaterialStateTextStyle.resolveWith((states) =>
              TextStyle(
                  color: states.contains(MaterialState.selected)
                      ? ColorUtils.blue
                      : ColorUtils.black))));
}

TextTheme textTheme() {
  return const TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyText2: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
  );
}
