import 'package:flutter/material.dart';
import 'package:qubook/widgets/navigation.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Transactions here"));
  }
}