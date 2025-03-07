import 'package:flutter/material.dart';

class AppThemeManager {
  static final AppThemeManager _instance = AppThemeManager._internal();
  factory AppThemeManager() => _instance;
  AppThemeManager._internal();

  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);

  void toggleTheme() {
    themeNotifier.value = themeNotifier.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}