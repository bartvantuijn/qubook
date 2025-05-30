import 'package:flutter/material.dart';
import 'package:qubook/widgets/navigation.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Subscriptions here"));
  }
}