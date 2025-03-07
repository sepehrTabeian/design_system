import 'package:design_system/app_color_scheme.dart';
import 'package:design_system/text_field_const.dart';
import 'package:design_system/app_text_theme.dart';
import 'package:flutter/material.dart';

abstract class AppTextFieldTheme {
  AppTextFieldTheme();

  bool get filled => true;

  Color get fillColor;

  double get borderRadius => AppTextFieldConst.borderRadius;

  Color get borderSideColor;

  Color get enableBorderSideColor;

  Color get disabledBorderSideColor;

  Color get focusedBorderSideColor;

  Color get errorBorderSideColor;

  Color get focusedErrorBorderSideColor;

  TextStyle? get textStyle;

  InputDecorationTheme getTextFieldInputDecoration() {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      border: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppTextFieldConst.borderRadius),
        borderSide: BorderSide(
          color: borderSideColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppTextFieldConst.borderRadius),
        borderSide: BorderSide(
          color: enableBorderSideColor,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppTextFieldConst.borderRadius),
        borderSide: BorderSide(
          color: enableBorderSideColor,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppTextFieldConst.borderRadius),
        borderSide: BorderSide(
          color: focusedBorderSideColor,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppTextFieldConst.borderRadius),
        borderSide: BorderSide(
          color: errorBorderSideColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(AppTextFieldConst.borderRadius),
        borderSide: BorderSide(
          color: focusedErrorBorderSideColor,
        ),
      ),
    );
  }
}

class LightAppTextFieldTheme extends AppTextFieldTheme {
  LightAppTextFieldTheme();

  @override
  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium
      ?.copyWith(color: LightAppColorScheme().onSurfaceBright);

  @override
  Color get borderSideColor =>
      LightAppColorScheme().surfaceContainerHighest;

  @override
  Color get enableBorderSideColor =>
      LightAppColorScheme().surfaceContainerHighest;

  @override
  Color get disabledBorderSideColor =>
      LightAppColorScheme().surfaceContainerHighest;

  @override
  Color get errorBorderSideColor => LightAppColorScheme().error;

  @override
  Color get fillColor => LightAppColorScheme().surfaceBright;

  @override
  Color get focusedBorderSideColor => LightAppColorScheme().primary;

  @override
  Color get focusedErrorBorderSideColor => LightAppColorScheme().error;
}

class DarkAppTextFieldTheme extends AppTextFieldTheme {
  DarkAppTextFieldTheme();

  @override
  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium
      ?.copyWith(color: DarkAppColorScheme().onSurfaceBright);

  @override
  Color get borderSideColor =>
      DarkAppColorScheme().surfaceContainerHighest;

  @override
  Color get enableBorderSideColor =>
      DarkAppColorScheme().surfaceContainerHighest;

  @override
  Color get disabledBorderSideColor =>
      LightAppColorScheme().surfaceContainerHighest;

  @override
  Color get errorBorderSideColor => DarkAppColorScheme().error;

  @override
  Color get fillColor => DarkAppColorScheme().surfaceBright ;

  @override
  Color get focusedBorderSideColor => DarkAppColorScheme().primary;

  @override
  Color get focusedErrorBorderSideColor => DarkAppColorScheme().error;
}
