import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:qubook/pages/login.dart';
import 'package:qubook/pages/settings/theme.dart';
import 'package:qubook/styles/text.dart';
import 'package:qubook/widgets/bar.dart';
import 'package:qubook/widgets/gradient.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _storage = const FlutterSecureStorage();

  Future<void> _logout() async {
    await _storage.delete(key: 'token');

    if (!mounted) return;

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (_) => const LoginPage()
      ),
      (route) => false
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientWidget(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const BarWidget(
          title: 'Settings',
          actions: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  leading: const Icon(Icons.color_lens_outlined),
                  title: const Text('Theme', style: AppText.bold),
                  subtitle: const Text('Light / Dark Mode', style: AppText.subtitle),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_) => const ThemeSettingsPage()
                      ),
                    );
                  },
                ),

                ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text('Logout', style: AppText.danger),
                  onTap: _logout,
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //       SnackBar(
                //         duration: Duration(seconds: 2),
                //         content: Text('Test2')
                //       ),
                //     );
                //   }, child: Text('Open snackbar')
                // ),
                // ElevatedButton(
                //   onPressed: () {
                //     showDialog(context: context, builder: (context) {
                //       return AlertDialog(
                //         title: Text('alert'),
                //         content: Text('alert'),
                //         actions: [
                //           FilledButton(onPressed: () {
                //             Navigator.pop(context);
                //             }, child: Text('Close'))
                //         ],
                //       );
                //     });
                //     }, child: Text('Open dialog')
                // ),
                // Switch(value: true, onChanged: (value) => false),
                // SwitchListTile(value: true, onChanged: (value) => false),
                // ElevatedButton(onPressed: () {}, child: Text('Click me')),
                // FilledButton(onPressed: () {}, child: Text('Click me')),
                // TextButton(onPressed: () {}, child: Text('Click me')),
                // OutlinedButton(onPressed: () {}, child: Text('Click me')),
                // CloseButton(),
                // BackButton(),
              ],
            )
          ),
        ),
      ),
    );
  }
}