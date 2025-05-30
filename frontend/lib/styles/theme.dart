import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final _textTheme = GoogleFonts.montserratTextTheme();

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      secondary: Colors.black,
    ),
    textTheme: _textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.grey[100],
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        final isSelected = states.contains(WidgetState.selected);
        return TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.black : Colors.grey,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
        final isSelected = states.contains(WidgetState.selected);
        return IconThemeData(
          color: isSelected ? Colors.black : Colors.grey,
        );
      }),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.black),
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      secondary: Colors.white,
    ),
    textTheme: _textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.grey[900],
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        final isSelected = states.contains(WidgetState.selected);
        return TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.white : Colors.grey,
        );
      }),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
        final isSelected = states.contains(WidgetState.selected);
        return IconThemeData(
          color: isSelected ? Colors.white : Colors.grey,
        );
      }),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Colors.white),
    ),
  );
}