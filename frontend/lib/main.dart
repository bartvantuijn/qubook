import 'package:flutter/material.dart';
import 'package:qubook/pages/splash.dart';
import 'package:qubook/styles/theme.dart';
import 'package:qubook/utilities/notifiers.dart';

void main() {
  runApp(const QubookApp());
}

class QubookApp extends StatelessWidget {
  const QubookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: themeNotifier, builder: (context, value, child) {
      return MaterialApp(
        title: 'Qubook',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: themeNotifier.value,
        debugShowCheckedModeBanner: false,
        home: const SplashPage()
      );
    });
  }
}