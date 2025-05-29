import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text("Transaction ${index + 1}"),
            subtitle: Text("Category: Diverse"),
            trailing: Text("- €${(index + 1) * 3.5}", style: const TextStyle(color: Colors.red)),
          ),
        );
      },
    );
  }
}