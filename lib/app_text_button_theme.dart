import 'package:design_system/app_color_scheme.dart';
import 'package:design_system/app_text_theme.dart';
import 'package:flutter/material.dart';

abstract class AppTextButtonTheme {
  AppTextButtonTheme();

  Color get foregroundColor;

  Color get backgroundColor;

  Color get disabledForegroundColor;

  Color get disabledBackgroundColor;

  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium;

  TextButtonThemeData getTextButtonTheme();
}

class LightAppTextButtonTheme extends AppTextButtonTheme {
  LightAppTextButtonTheme();

  @override
  TextButtonThemeData getTextButtonTheme() {
    return TextButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          foregroundColor: foregroundColor,
          disabledForegroundColor: disabledForegroundColor,
          textStyle: textStyle,
        ));
  }

  @override
  Color get disabledForegroundColor => LightAppColorScheme().tertiary;

  @override
  Color get foregroundColor => LightAppColorScheme().primary;

  @override
  Color get backgroundColor => LightAppColorScheme().surface;

  @override
  Color get disabledBackgroundColor => LightAppColorScheme().surface;

}

class DarkAppTextButtonTheme extends AppTextButtonTheme {
  DarkAppTextButtonTheme();

  @override
  TextButtonThemeData getTextButtonTheme() {
    return TextButtonThemeData(
        style: FilledButton.styleFrom(
          foregroundColor: foregroundColor,
          disabledForegroundColor: disabledForegroundColor,
          textStyle: textStyle,
        ));
  }

  @override
  Color get disabledForegroundColor => DarkAppColorScheme().tertiary;

  @override
  Color get foregroundColor => DarkAppColorScheme().primary;

  @override
  Color get backgroundColor => DarkAppColorScheme().surface;

  @override
  Color get disabledBackgroundColor => DarkAppColorScheme().surface;

}
