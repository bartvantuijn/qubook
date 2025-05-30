import 'package:flutter/material.dart';
import 'package:qubook/pages/accounts.dart';
import 'package:qubook/pages/overview.dart';
import 'package:qubook/pages/statistics.dart';
import 'package:qubook/pages/subscriptions.dart';
import 'package:qubook/pages/transactions.dart';
import 'package:qubook/utilities/notifiers.dart';
import 'package:qubook/widgets/bar.dart';
import 'package:qubook/widgets/gradient.dart';
import 'package:qubook/widgets/navigation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Widget> _pages = const [
    OverviewPage(),
    AccountsPage(),
    TransactionsPage(),
    StatisticsPage(),
    SubscriptionsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const BarWidget(),
        body: ValueListenableBuilder(valueListenable: navigationNotifier, builder: (context, value, child) {
          return _pages[value];
        }),
        bottomNavigationBar: const NavigationWidget(),
      ),
    );
  }
}