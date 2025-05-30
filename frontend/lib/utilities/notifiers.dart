import 'package:flutter/material.dart';

final navigationNotifier = NavigationNotifier();
final themeNotifier = ThemeNotifier();

class NavigationNotifier extends ValueNotifier<int> {
  NavigationNotifier() : super(0);
  String get title => _titles[value];

  static const List<String> _titles = [
    'Overview',
    'Accounts',
    'Transactions',
    'Statistics',
    'Subscriptions',
  ];
}

class ThemeNotifier extends ValueNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.system);
}
