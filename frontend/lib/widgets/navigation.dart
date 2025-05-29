import 'package:flutter/material.dart';
import 'package:qubook/pages/overview.dart';
import 'package:qubook/pages/statistics.dart';
import 'package:qubook/pages/transactions.dart';
import 'package:qubook/pages/subscriptions.dart';
import 'package:qubook/pages/settings.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    OverviewPage(),
    TransactionsPage(),
    StatisticsPage(),
    SubscriptionsPage(),
    SettingsPage(),
  ];

  final List<String> _titles = const [
    'Overview',
    'Transactions',
    'Statistics',
    'Subscriptions',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titles[_currentIndex]),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Overview'),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Statistics'),
          BottomNavigationBarItem(icon: Icon(Icons.repeat), label: 'Subscriptions'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}