import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';

class AppCustomTheme {
  static ThemeData lightMode = ThemeData(
    unselectedWidgetColor: greyColor,
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.light(
        background: darkContChildColor,
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.1,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      actionsIconTheme: IconThemeData(
        color: greyColor,
      ),
      iconTheme: IconThemeData(color: lightGreyColor),
    ),
    colorScheme: const ColorScheme(
      primary: accentColor, // Accent
      background: contGreyColor, // Color de fondo
      surface: backgroundColor, // Color de fondo para backgrounds

      brightness: Brightness.light,
      error: redColor,
      errorContainer: redColor,

      secondary: Colors.white,
      onSecondary: Colors.white,
      onError: redColor,
      onBackground: contGreyColor,
      onSurface: contGreyColor,
      onPrimary: Colors.white,
    ),
    iconTheme: const IconThemeData(color: blackColor),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: blackColor),
      displaySmall: TextStyle(color: blackColor),
      displayLarge: TextStyle(color: blackColor),
      headlineLarge: TextStyle(color: blackColor),
      bodyLarge: TextStyle(color: blackColor),
      bodyMedium: TextStyle(color: blackColor),
      bodySmall: TextStyle(color: blackColor),
      displayMedium: TextStyle(color: blackColor),
      headlineMedium: TextStyle(color: blackColor),
      headlineSmall: TextStyle(color: blackColor),
      labelLarge: TextStyle(color: blackColor),
      labelMedium: TextStyle(color: blackColor),
      labelSmall: TextStyle(color: blackColor),
      titleMedium: TextStyle(color: blackColor),
      titleSmall: TextStyle(color: blackColor),
    ),
    scaffoldBackgroundColor: backgroundColor,
  );

  static ThemeData darkMode = ThemeData(
    scaffoldBackgroundColor: darkBackgroundColor,
    unselectedWidgetColor: greyColor,
    buttonTheme: const ButtonThemeData(
      colorScheme: ColorScheme.light(
        background: accentColor,
      ),
    ),
    appBarTheme: lightMode.appBarTheme.copyWith(
      titleTextStyle: lightMode.appBarTheme.titleTextStyle?.copyWith(
        color: Colors.white,
      ),
    ),
    colorScheme: const ColorScheme(
      primary: accentColor, // Accent
      background: darkContChildColor, // Color de fondo
      surface: darkContColor, // Color de fondo para backgrounds
      brightness: Brightness.dark,
      error: redColor,
      errorContainer: redColor,

      secondary: Colors.white,
      onSecondary: Colors.white,
      onError: redColor,
      onBackground: darkBackgroundColor,
      onSurface: darkBackgroundColor,
      onPrimary: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: greyColor,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      displayLarge: TextStyle(color: Colors.white),
      headlineLarge: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
    ),
  );
}
