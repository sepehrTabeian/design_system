import 'package:design_system/app_color_scheme.dart';
import 'package:design_system/app_text_theme.dart';
import 'package:flutter/material.dart';

import 'button_const.dart';

abstract class AppFilledButtonTheme {
  AppFilledButtonTheme();

  OutlinedBorder get shape => RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppButtonConst.borderRadius));

  double get padding => AppButtonConst.padding;

  Color get backgroundColor;

  Color get disabledBackgroundColor;

  Color get foregroundColor;

  Color get disabledForegroundColor;

  Color get disabledIconColor;

  TextStyle? get textStyle;

  FilledButtonThemeData getFilledButtonTheme();
}

class LightAppFilledButtonTheme extends AppFilledButtonTheme {
  LightAppFilledButtonTheme();

  @override
  FilledButtonThemeData getFilledButtonTheme() {
    return FilledButtonThemeData(
        style: FilledButton.styleFrom(
      shape: shape,
      padding: EdgeInsets.all(padding),
      backgroundColor: backgroundColor,
      disabledBackgroundColor: disabledBackgroundColor,
      foregroundColor: foregroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledIconColor: disabledIconColor,
      textStyle: textStyle,
    ));
  }

  @override
  Color get backgroundColor => LightAppColorScheme().primary;

  @override
  Color get disabledBackgroundColor =>
      LightAppColorScheme().surfaceContainer;

  @override
  Color get disabledForegroundColor =>
      LightAppColorScheme().onTertiaryContainer;

  @override
  Color get disabledIconColor =>
      LightAppColorScheme().onTertiaryContainer;

  @override
  Color get foregroundColor => LightAppColorScheme().onPrimary;

  @override
  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium;
}

class DarkAppFilledButtonTheme extends AppFilledButtonTheme {
  DarkAppFilledButtonTheme();

  @override
  FilledButtonThemeData getFilledButtonTheme() {
    return FilledButtonThemeData(
        style: FilledButton.styleFrom(
      shape: shape,
      padding: EdgeInsets.all(padding),
      backgroundColor: backgroundColor,
      disabledBackgroundColor: disabledBackgroundColor,
      foregroundColor: foregroundColor,
      disabledForegroundColor: disabledForegroundColor,
      disabledIconColor: disabledIconColor,
      textStyle: textStyle,
    ));
  }

  @override
  Color get backgroundColor => DarkAppColorScheme().primary;

  @override
  Color get disabledBackgroundColor =>
      DarkAppColorScheme().surfaceContainer;

  @override
  Color get disabledForegroundColor =>
      DarkAppColorScheme().onTertiaryContainer;

  @override
  Color get disabledIconColor => DarkAppColorScheme().onTertiaryContainer;

  @override
  Color get foregroundColor => DarkAppColorScheme().onPrimary;

  @override
  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium;
}
