import 'package:flutter/material.dart';
import 'package:qubook/utilities/notifiers.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: navigationNotifier, builder: (context, value, child) {
      return NavigationBar(
        selectedIndex: value,
        onDestinationSelected: (value) {
          navigationNotifier.value = value;
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Overview'),
          NavigationDestination(icon: Icon(Icons.account_balance), label: 'Accounts'),
          NavigationDestination(icon: Icon(Icons.list), label: 'Transactions'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Statistics'),
          NavigationDestination(icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
        ],
      );
    });
  }
}