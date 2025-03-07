
import 'package:design_system/app_color_scheme.dart';
import 'package:design_system/app_text_theme.dart';
import 'package:design_system/app_filled_button_theme.dart';
import 'package:design_system/app_outlined_button_theme.dart';
import 'package:design_system/app_text_field_theme.dart';
import 'package:flutter/material.dart';

import 'app_text_button_theme.dart';

abstract class AppTheme {
  AppTheme();

  InputDecorationTheme get inputDecorationTheme;

  ColorScheme get colorScheme;

  String get fontFamily => 'YekanBakh';

  bool get useMaterial3 => true;

  TextTheme get textTheme => AppTextTheme.textTheme;

  FilledButtonThemeData get filledButtonTheme;

  OutlinedButtonThemeData get outlinedButtonTheme;

  TextButtonThemeData get textButtonTheme;

  ThemeData createThemeData() {
    return ThemeData(
      inputDecorationTheme: inputDecorationTheme,
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      useMaterial3: useMaterial3,
      textTheme: textTheme,
      filledButtonTheme: filledButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      textButtonTheme: textButtonTheme,
    );
  }
}

class LightThemeData extends AppTheme {
  @override
  final InputDecorationTheme inputDecorationTheme = LightAppTextFieldTheme()
      .getTextFieldInputDecoration();

  @override
  final ColorScheme colorScheme = LightAppColorScheme().getColorScheme();

  @override
  final FilledButtonThemeData filledButtonTheme =
  LightAppFilledButtonTheme().getFilledButtonTheme();

  @override
  final OutlinedButtonThemeData outlinedButtonTheme =
  LightAppOutlinedButtonTheme().getOutlinedButtonTheme();

  @override
  final TextButtonThemeData textButtonTheme =
  LightAppTextButtonTheme().getTextButtonTheme();

  LightThemeData();

  ThemeData get themeData => createThemeData();
}

class DarkThemeData extends AppTheme {
  @override
  final InputDecorationTheme inputDecorationTheme = DarkAppTextFieldTheme()
      .getTextFieldInputDecoration();

  @override
  final ColorScheme colorScheme = DarkAppColorScheme().getColorScheme();

  @override
  final FilledButtonThemeData filledButtonTheme =
  DarkAppFilledButtonTheme().getFilledButtonTheme();

  @override
  final OutlinedButtonThemeData outlinedButtonTheme =
  DarkAppOutlinedButtonTheme().getOutlinedButtonTheme();

  @override
  final TextButtonThemeData textButtonTheme =
  DarkAppTextButtonTheme().getTextButtonTheme();

  DarkThemeData();

  ThemeData get themeData => createThemeData();
}

class AppThemeData {
  static ThemeData lightThemeData = LightThemeData().themeData;
  static ThemeData darkThemeData = DarkThemeData().themeData;
}
