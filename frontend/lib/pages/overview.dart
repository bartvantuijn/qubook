import 'package:flutter/material.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/widgets/navigation.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({super.key});

  @override
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Balance', style: AppText.subtitle),
                  Text('1,234.50', style: AppText.h1),
                ],
              ),
            ),
          ),

          const SizedBox(height: 36),

          const Text(
            'Upcoming payments',
            style: AppText.h2,
          ),

          const SizedBox(height: 12),

          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: Icon(Icons.apple, color: Colors.black, size: 28),
                          ),
                          Text('iCloud', style: AppText.bold),
                          Text('€ 1,234.50 / month', style: AppText.body),
                          Text('2 days', style: AppText.subtitle),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: Icon(Icons.adobe, color: Colors.black, size: 28),
                          ),
                          Text('Adobe', style: AppText.bold),
                          Text('€ 1,234.50 / month', style: AppText.body),
                          Text('2 days', style: AppText.subtitle),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Recent transactions',
            style: AppText.h2,
          ),

          const SizedBox(height: 12),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.apple, color: Colors.black, size: 28),
              ),
              title: Text('Payment to Apple', style: AppText.bold),
              subtitle: Text('21 May', style: AppText.subtitle),
              trailing: Text('- €123.45', style: AppText.danger),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.apple, color: Colors.black, size: 28),
              ),
              title: Text('Payment to Apple', style: AppText.bold),
              subtitle: Text('21 May', style: AppText.subtitle),
              trailing: Text('- €123.45', style: AppText.danger),
            ),
          ),

          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.apple, color: Colors.black, size: 28),
              ),
              title: Text('Payment to Apple', style: AppText.bold),
              subtitle: Text('21 May', style: AppText.subtitle),
              trailing: Text('- €123.45', style: AppText.danger),
            ),
          ),
        ]
      )
    );
  }
}