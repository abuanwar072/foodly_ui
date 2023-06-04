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

final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  fillColor: inputColor,
  filled: true,
  // hintStyle: Theme.of(context).textTheme.bodyMedium,
  contentPadding: const EdgeInsets.all(defaultPadding),
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
