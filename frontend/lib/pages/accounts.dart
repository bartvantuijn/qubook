import 'package:flutter/material.dart';
import 'package:qubook/widgets/navigation.dart';

class AccountsPage extends StatefulWidget {
  const AccountsPage({super.key});

  @override
  State<AccountsPage> createState() => _AccountsPageState();
}

class _AccountsPageState extends State<AccountsPage> {

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Accounts here"));
  }
}