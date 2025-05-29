import 'package:flutter/material.dart';
import 'package:qubook/pages/splash.dart';
import 'package:qubook/styles/theme.dart';

void main() => runApp(const Qubook());

class Qubook extends StatelessWidget {
  const Qubook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qubook',
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}