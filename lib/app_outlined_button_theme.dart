import 'package:design_system/button_const.dart';
import 'package:design_system/app_color_scheme.dart';
import 'package:design_system/app_text_theme.dart';
import 'package:flutter/material.dart';

abstract class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme();

  WidgetStateProperty<BorderSide> get borderSide {
    return WidgetStateProperty.resolveWith<BorderSide>((states) {
      if (states.contains(WidgetState.disabled)) {
        return BorderSide(color: disabledBorderColor, width: 1.0);
      }
      return BorderSide(color: borderColor, width: 1.0);
    });
  }

  double get padding => AppButtonConst.padding;

  Color get backgroundColor;

  Color get borderColor;

  Color get disabledBackgroundColor;

  Color get foregroundColor;

  Color get disabledForegroundColor;

  Color get disabledIconColor;

  Color get disabledBorderColor;

  TextStyle? get textStyle;

  OutlinedButtonThemeData getOutlinedButtonTheme();
}

class LightAppOutlinedButtonTheme extends AppOutlinedButtonTheme {
  LightAppOutlinedButtonTheme();

  @override
  OutlinedButtonThemeData getOutlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                AppButtonConst.borderRadius),
          ),
        ),
        side: borderSide,
        padding: WidgetStateProperty.all(
          EdgeInsets.all(padding),
        ),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return disabledForegroundColor;
            }
            return foregroundColor;
          },
        ),
        textStyle: WidgetStateProperty.all(textStyle),
      ),
    );
  }

  @override
  Color get backgroundColor => LightAppColorScheme().surfaceBright;

  @override
  Color get borderColor => LightAppColorScheme().primary;

  @override
  Color get disabledBorderColor => LightAppColorScheme().surfaceContainerHighest;

  @override
  Color get disabledBackgroundColor => LightAppColorScheme().surface;

  @override
  Color get disabledForegroundColor => LightAppColorScheme().onTertiaryContainer;

  @override
  Color get disabledIconColor => LightAppColorScheme().onTertiaryContainer;

  @override
  Color get foregroundColor => LightAppColorScheme().primary;

  @override
  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium;

}

class DarkAppOutlinedButtonTheme extends AppOutlinedButtonTheme {
  DarkAppOutlinedButtonTheme();

  @override
  OutlinedButtonThemeData getOutlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                AppButtonConst.borderRadius),
          ),
        ),
        side: borderSide,
        padding: WidgetStateProperty.all(
          EdgeInsets.all(padding),
        ),
        backgroundColor: WidgetStateProperty.all(backgroundColor),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return disabledForegroundColor;
            }
            return foregroundColor;
          },
        ),
        textStyle: WidgetStateProperty.all(textStyle),
      ),
    );
  }

  @override
  Color get backgroundColor => DarkAppColorScheme().surfaceBright;

  @override
  Color get borderColor => DarkAppColorScheme().primary;

  @override
  Color get disabledBackgroundColor => DarkAppColorScheme().surface;

  @override
  Color get disabledForegroundColor => DarkAppColorScheme().onTertiaryContainer;

  @override
  Color get disabledIconColor => DarkAppColorScheme().onTertiaryContainer;

  @override
  Color get foregroundColor => DarkAppColorScheme().primary;

  @override
  TextStyle? get textStyle => AppTextTheme.textTheme.bodyMedium;

  @override
  Color get disabledBorderColor => DarkAppColorScheme().surfaceContainerHighest; // Example disabled border color
}
