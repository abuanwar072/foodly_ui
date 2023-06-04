import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: accentColor,

    scaffoldBackgroundColor: Colors.white,
    fontFamily: "SF Pro Text",
    // textTheme: textTheme().apply(displayColor: titleColor),
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    inputDecorationTheme: inputDecorationTheme,
    buttonTheme: buttonThemeData,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// TextTheme textTheme() {
//   return TextTheme(
//     headline3: kHeadlineTextStyle,
//     headline4: kH1TextStyle,
//     headline5: kH2TextStyle,
//     headline6: kH3TextStyle,
//     subtitle1: kSubHeadTextStyle,
//     bodyText2: kBodyTextStyle,
//     button: kButtonTextStyle,
//   );
// }

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  fillColor: inputColor,
  filled: true,
  // hintStyle: kBodyTextStyle,
  contentPadding: const EdgeInsets.all(kDefaultPadding),
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder.copyWith(
      borderSide: BorderSide(
    color: primaryColor.withOpacity(0.5),
  )),
  errorBorder: kDefaultOutlineInputBorder.copyWith(
    borderSide: kErrorBorderSide,
  ),
  focusedErrorBorder: kDefaultOutlineInputBorder.copyWith(
    borderSide: kErrorBorderSide,
  ),
);

const ButtonThemeData buttonThemeData = ButtonThemeData(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8))),
);
