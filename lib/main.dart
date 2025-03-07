import 'package:design_system/app_theme.dart';
import 'package:flutter/material.dart';

import 'app_theme_manager.dart';

void main() {
  runApp(ThemeWrapper());
}

class ThemeWrapper extends StatelessWidget {
  const ThemeWrapper({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: AppThemeManager().themeNotifier,
      builder: (context, themeMode, _) {
        return MaterialApp(
          theme: AppThemeData.lightThemeData,
          darkTheme: AppThemeData.darkThemeData,
          themeMode: themeMode,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Theme Example'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Current Theme: ${themeMode == ThemeMode.light ? 'Light' : 'Dark'}'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: changeAppTheme,
                    child: const Text('Toggle Theme'),
                  ),
                ],
              ),
            )
          ));
        },
    );
  }
}

void changeAppTheme() {
  AppThemeManager().toggleTheme();
}
