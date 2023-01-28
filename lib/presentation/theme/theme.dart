import 'package:flutter/material.dart';

class GiftMeTheme {
  static ThemeData get lightTheme {
    //final _themeData = ThemeData.light();
    //final _textTheme = _themeData.textTheme;

    return ThemeData.light();

    // return ThemeData.light().copyWith(
    //     scaffoldBackgroundColor: GiftMeColours.white,
    //     appBarTheme: _appBarTheme(),
    //     floatingActionButtonTheme:
    //         _floatingActionButtonThemeData(GiftMeColours.supernova),
    //     elevatedButtonTheme: _elevatedButtonThemeData(GiftMeColours.supernova),
    //     cardTheme: _cardTheme(),
    //     splashColor: GiftMeColours.white,
    //     textTheme: _textTheme.copyWith(
    //       headline1: _textStyle(GiftMeColours.blackRock, 24),
    //     ));
  }

  // static AppBarTheme _appBarTheme() {
  //   return AppBarTheme(color: GiftMeColours.neonBlue);
  // }
  //
  // static CardTheme _cardTheme() {
  //   return CardTheme(
  //     margin: const EdgeInsets.all(10.0),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(15.0),
  //     ),
  //   );
  // }
  //
  // static FloatingActionButtonThemeData _floatingActionButtonThemeData(
  //     Color color) {
  //   return FloatingActionButtonThemeData(
  //     backgroundColor: color,
  //   );
  // }
  //
  // static ElevatedButtonThemeData _elevatedButtonThemeData(Color color) {
  //   return ElevatedButtonThemeData(
  //     style: ElevatedButton.styleFrom(
  //       primary: color,
  //       onPrimary: GiftMeColours.white,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(10.0),
  //       ),
  //     ),
  //   );
  // }
  //
  // static TextStyle _textStyle(Color color, double textSize) {
  //   return TextStyle(
  //     fontFamily: 'Quicksand',
  //     fontWeight: FontWeight.bold,
  //     color: color,
  //     fontSize: textSize,
  //   );
  // }
}
