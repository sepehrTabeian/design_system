import 'package:flutter/material.dart';

class AppTextTheme {
  static const _fontFamilyName = 'YekanBakh';
//TODO height parameter makes weired effect on widgets, decide about it with mobile team
  static TextTheme textTheme = const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 40.0),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 32.0),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 28.0),
      titleLarge: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: _fontFamilyName,
          fontSize: 24.0),
      titleMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: _fontFamilyName,
          fontSize: 22.0),
      titleSmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: _fontFamilyName,
          fontSize: 16.0),
      labelLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 14.0),
      labelMedium: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: _fontFamilyName,
          fontSize: 12.0),
      labelSmall: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: _fontFamilyName,
          fontSize: 11.0),
      bodyLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 16.0),
      bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 14.0),
      bodySmall: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: _fontFamilyName,
          fontSize: 12.0));
}
